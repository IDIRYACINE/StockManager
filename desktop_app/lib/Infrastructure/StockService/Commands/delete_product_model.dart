import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/Infrastructure/StockService/api.dart';
import 'package:stock_manager/Infrastructure/services.dart';
import 'package:graphql/client.dart';
import 'package:stock_manager/Infrastructure/GraphQlService/service.dart'
    as graphql_service;

class DeleteProductModel extends Command<DeleteProductModelEventData,
    DeleteProductModelRawEventData, DeleteProductModelResponse> {
  static final eventId = StockApi.deleteProductModel.index;
  static final eventName = StockApi.deleteProductModel.name;
  static final serviceId = Services.stockService.index;

  final GraphQLClient graphQl;
  DeleteProductModel(this.graphQl) : super(eventId, eventName);

  @override
  Future<DeleteProductModelResponse> handleEvent(
      DeleteProductModelEventData eventData) async {
    const mutationDoc = r""" 
          mutation DeleteOneProductModel($where: ProductModelWhereUniqueInput!) {
  deleteOneProductModel(where: $where) {
    product_id
  }
}
    """;

    final compoundKey = graphql_service
        .Input$ProductModelProduct_idColor_idSize_idCompoundUniqueInput(
      product_id: eventData.productId,
      color_id: eventData.colorId,
      size_id: eventData.sizeId,
    );

    final where = graphql_service.Input$ProductModelWhereUniqueInput(
        product_id_color_id_size_id: compoundKey);

    final MutationOptions options = MutationOptions(
      document: gql(mutationDoc),
      variables: {"where": where},
    );

    final result = await graphQl.mutate(options);

    if (result.hasException) {
      return DeleteProductModelResponse(
          messageId: eventData.messageId,
          status: ServiceEventResponseStatus.error);
    }

    return DeleteProductModelResponse(messageId: eventData.messageId);
  }

  @override
  Future<DeleteProductModelResponse> handleRawEvent(
      DeleteProductModelRawEventData eventData) {
    throw UnimplementedError();
  }
}

class DeleteProductModelResponse extends ServiceEventResponse {
  DeleteProductModelResponse(
      {required int messageId,
      ServiceEventResponseStatus status = ServiceEventResponseStatus.success})
      : super(messageId, status);
}

class DeleteProductModelRawEventData extends RawServiceEventData {
  DeleteProductModelRawEventData(
      {required int messageId, required String requesterId})
      : super(messageId, requesterId, DeleteProductModel.eventId);
}

class DeleteProductModelEventData
    extends ServiceEventData<DeleteProductModelRawEventData> {
  final int productId;
  final int colorId;
  final int sizeId;
  DeleteProductModelEventData(
      {required String requesterId,
      required this.productId,
      required this.colorId,
      required this.sizeId})
      : super(
          requesterId,
        );

  @override
  DeleteProductModelRawEventData toRawServiceEventData() {
    return DeleteProductModelRawEventData(
        messageId: messageId, requesterId: requesterId);
  }
}

class DeleteProductModelEvent extends ServiceEvent<DeleteProductModelResponse> {
  DeleteProductModelEvent({required super.eventData, super.callback})
      : super(DeleteProductModel.eventId, DeleteProductModel.eventName,
            DeleteProductModel.serviceId);
}
