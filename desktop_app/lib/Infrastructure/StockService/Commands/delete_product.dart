import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/Domain/Models/product.dart';
import 'package:stock_manager/Infrastructure/StockService/api.dart';
import 'package:stock_manager/Infrastructure/services.dart';
import 'package:graphql/client.dart';
import 'package:stock_manager/Infrastructure/GraphQlService/service.dart'
    as graphql_service;

class DeleteProduct extends Command<DeleteProductEventData,
    DeleteProductRawEventData, DeleteProductResponse> {
  static final eventId = StockApi.deleteProduct.index;
  static final eventName = StockApi.deleteProduct.name;
  static final serviceId = Services.stockService.index;

  final GraphQLClient graphQl;

  DeleteProduct(this.graphQl) : super(eventId, eventName);

  @override
  Future<DeleteProductResponse> handleEvent(DeleteProductEventData eventData) async {
    const mutationDoc = r""" 
          mutation DeleteOneProducts($where: ProductsWhereUniqueInput!) {
  deleteOneProducts(where: $where) {
    product_id
  }
}
    """;

    final product = eventData.product;

    final where = graphql_service.Input$ProductsWhereUniqueInput(
        product_id: product.barcode);

    final MutationOptions options = MutationOptions(
      document: gql(mutationDoc),
      variables: {"where": where},
    );

    final result = await graphQl.mutate(options);

    if (result.hasException) {
      return DeleteProductResponse(
          messageId: eventData.messageId, status: ServiceEventResponseStatus.error);
    }

    return DeleteProductResponse(messageId: eventData.messageId);
  }

  @override
  Future<DeleteProductResponse> handleRawEvent(
      DeleteProductRawEventData eventData) {
    throw UnimplementedError();
  }
}

class DeleteProductResponse extends ServiceEventResponse {
  DeleteProductResponse({required int messageId,
      ServiceEventResponseStatus status = ServiceEventResponseStatus.success})
      : super(messageId, status);
}

class DeleteProductRawEventData extends RawServiceEventData {
  DeleteProductRawEventData(
      {required int messageId, required String requesterId})
      : super(messageId, requesterId, DeleteProduct.eventId);
}

class DeleteProductEventData
    extends ServiceEventData<DeleteProductRawEventData> {
  final Product product;
  
  DeleteProductEventData({
      required String requesterId,
      required this.product})
      : super( requesterId);

  @override
  DeleteProductRawEventData toRawServiceEventData() {
    return DeleteProductRawEventData(
        messageId: messageId, requesterId: requesterId);
  }
}

class DeleteProductEvent extends ServiceEvent<DeleteProductResponse> {
  DeleteProductEvent({required super.eventData, super.callback})
      : super(DeleteProduct.eventId, DeleteProduct.eventName,
            DeleteProduct.serviceId);
}
