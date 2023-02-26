import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/Infrastructure/StockService/api.dart';
import 'package:stock_manager/Infrastructure/services.dart';
import 'package:graphql/client.dart';
import 'package:stock_manager/Infrastructure/GraphQlService/service.dart'
    as graphql_service;

class UpdateProductModel extends Command<UpdateProductModelEventData,
    UpdateProductModelRawEventData, UpdateProductModelResponse> {
  static final eventId = StockApi.updateProductModel.index;
  static final eventName = StockApi.updateProductModel.name;
  static final serviceId = Services.stockService.index;

  final GraphQLClient graphQl;

  UpdateProductModel(this.graphQl) : super(eventId, eventName);

  @override
  Future<UpdateProductModelResponse> handleEvent(
      UpdateProductModelEventData eventData) async {

    final compoundKey = graphql_service
        .Input$ProductModelProduct_idColor_idSize_idCompoundUniqueInput(
      product_id: eventData.productId,
      color_id: eventData.colorId,
      size_id: eventData.sizeId,
    );

    final where = graphql_service.Input$ProductModelWhereUniqueInput(
        product_id_color_id_size_id: compoundKey);


    final input = graphql_service.Input$ProductModelUpdateInput(
      quantity: graphql_service.Input$IntFieldUpdateOperationsInput(
        $set : eventData.quantity,
      ),

    );

    final MutationOptions options = graphql_service.Options$Mutation$UpdateOneProductModel(
        variables: graphql_service.Variables$Mutation$UpdateOneProductModel(
            data: input, where: where));

    final result = await graphQl.mutate(options);

    if (result.hasException) {
      return UpdateProductModelResponse(
          messageId: eventData.messageId,
          status: ServiceEventResponseStatus.error);
    }

    return UpdateProductModelResponse(messageId: eventData.messageId);
  }

  @override
  Future<UpdateProductModelResponse> handleRawEvent(
      UpdateProductModelRawEventData eventData) {
    throw UnimplementedError();
  }
}

class UpdateProductModelResponse extends ServiceEventResponse {
  UpdateProductModelResponse(
      {required int messageId,
      ServiceEventResponseStatus status = ServiceEventResponseStatus.success})
      : super(messageId, status);
}

class UpdateProductModelRawEventData extends RawServiceEventData {
  UpdateProductModelRawEventData(
      {required int messageId, required String requesterId})
      : super(messageId, requesterId, UpdateProductModel.eventId);
}

class UpdateProductModelEventData
    extends ServiceEventData<UpdateProductModelRawEventData> {
  final int productId;
  final int colorId;
  final int sizeId;
  final int? quantity;



  UpdateProductModelEventData(
      {required String requesterId,
      required this.productId,
      this.quantity, 
      required this.colorId,
      required this.sizeId})
      : super(requesterId);

  @override
  UpdateProductModelRawEventData toRawServiceEventData() {
    return UpdateProductModelRawEventData(
        messageId: messageId, requesterId: requesterId);
  }
}

class UpdateProductModelEvent extends ServiceEvent<UpdateProductModelResponse> {
  UpdateProductModelEvent({required super.eventData, super.callback})
      : super(UpdateProductModel.eventId, UpdateProductModel.eventName,
            UpdateProductModel.serviceId);
}

