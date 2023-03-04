import 'package:graphql/client.dart';
import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/Domain/Models/product.dart';
import 'package:stock_manager/Infrastructure/StockService/api.dart';
import 'package:stock_manager/Infrastructure/services.dart';
import 'package:stock_manager/Infrastructure/GraphQlService/service.dart'
    as graphql_service;
import 'package:stock_manager/Types/i_wrappers.dart';

class UpdateProduct extends Command<UpdateProductEventData,
    UpdateProductRawEventData, UpdateProductResponse> {
  static final eventId = StockApi.updateProduct.index;
  static final eventName = StockApi.updateProduct.name;
  static final serviceId = Services.stockService.index;

  final GraphQLClient graphQl;

  UpdateProduct(this.graphQl) : super(eventId, eventName);

  @override
  Future<UpdateProductResponse> handleEvent(
      UpdateProductEventData eventData) async {
    final product = eventData.product;

    final where = graphql_service.Input$ProductsWhereUniqueInput(
        product_id: product.instance.barcode);

    final input = graphql_service.Input$ProductsUpdateInput(
      reference: graphql_service.Input$IntFieldUpdateOperationsInput(
          $set: product.instance.barcode),
      name: graphql_service.Input$StringFieldUpdateOperationsInput(
          $set: product.instance.name),
      buyingPrice: graphql_service.Input$FloatFieldUpdateOperationsInput(
          $set: product.instance.buyingPrice),
      sellingPrice: graphql_service.Input$FloatFieldUpdateOperationsInput(
          $set: product.instance.sellingPrice),
      description:
          graphql_service.Input$StringFieldUpdateOperationsInput($set: ""),
      picture: graphql_service.Input$StringFieldUpdateOperationsInput(
          $set: product.instance.imageUrl),
    );

    final MutationOptions options =
        graphql_service.Options$Mutation$UpdateOneProducts(
            variables: graphql_service.Variables$Mutation$UpdateOneProducts(
                where: where, data: input));

    final result = await graphQl.mutate(options);

    if (result.hasException) {
      return UpdateProductResponse(
          messageId: eventData.messageId,
          status: ServiceEventResponseStatus.error);
    }

    return UpdateProductResponse(messageId: eventData.messageId);
  }

  @override
  Future<UpdateProductResponse> handleRawEvent(
      UpdateProductRawEventData eventData) {
    throw UnimplementedError();
  }
}

class UpdateProductResponse extends ServiceEventResponse {
  UpdateProductResponse(
      {required int messageId,
      ServiceEventResponseStatus status = ServiceEventResponseStatus.success})
      : super(messageId, status);
}

class UpdateProductRawEventData extends RawServiceEventData {
  UpdateProductRawEventData(
      {required int messageId, required String requesterId})
      : super(messageId, requesterId, UpdateProduct.eventId);
}

class UpdateProductEventData
    extends ServiceEventData<UpdateProductRawEventData> {
  final UpdateRequestWrapper<Product> product;

  UpdateProductEventData({required String requesterId, required this.product})
      : super(requesterId);

  @override
  UpdateProductRawEventData toRawServiceEventData() {
    return UpdateProductRawEventData(
        messageId: messageId, requesterId: requesterId);
  }
}

class UpdateProductEvent extends ServiceEvent<UpdateProductResponse> {
  UpdateProductEvent({required super.eventData, super.callback})
      : super(UpdateProduct.eventId, UpdateProduct.eventName,
            UpdateProduct.serviceId);
}
