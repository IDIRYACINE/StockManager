import 'package:graphql/client.dart';
import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/Domain/Models/product.dart';
import 'package:stock_manager/Infrastructure/StockService/api.dart';
import 'package:stock_manager/Infrastructure/services.dart';
import 'package:stock_manager/Infrastructure/GraphQlService/service.dart'
    as graphql_service;

class DeleteProductFamily extends Command<DeleteProductFamilyEventData,
    DeleteProductFamilyRawEventData, DeleteProductFamilyResponse> {
  static final eventId = StockApi.deleteProductFamily.index;
  static final eventName = StockApi.deleteProductFamily.name;
  static final serviceId = Services.stockService.index;

  final GraphQLClient graphQl;

  DeleteProductFamily(this.graphQl) : super(eventId, eventName);

  @override
  Future<DeleteProductFamilyResponse> handleEvent(
      DeleteProductFamilyEventData eventData) async {
    final where = graphql_service.Input$ProductFamilyWhereUniqueInput(
      id: eventData.family.reference,
    );
    final variables =
        graphql_service.Variables$Mutation$DeleteOneProductFamily(where: where);

    final options = graphql_service.Options$Mutation$DeleteOneProductFamily(
      variables: variables,
    );

    final result = await graphQl.mutate(options);

    if (result.hasException) {
      return DeleteProductFamilyResponse(
        messageId: eventData.messageId,
        status: ServiceEventResponseStatus.error,
      );
    }

    return DeleteProductFamilyResponse(
      messageId: eventData.messageId,
    );
  }

  @override
  Future<DeleteProductFamilyResponse> handleRawEvent(
      DeleteProductFamilyRawEventData eventData) {
    throw UnimplementedError();
  }
}

class DeleteProductFamilyResponse extends ServiceEventResponse {
  DeleteProductFamilyResponse(
      {required int messageId,
      ServiceEventResponseStatus status = ServiceEventResponseStatus.success})
      : super(messageId, status);
}

class DeleteProductFamilyRawEventData extends RawServiceEventData {
  DeleteProductFamilyRawEventData(
      {required int messageId, required String requesterId})
      : super(messageId, requesterId, DeleteProductFamily.eventId);
}

class DeleteProductFamilyEventData
    extends ServiceEventData<DeleteProductFamilyRawEventData> {
  final ProductFamily family;
  DeleteProductFamilyEventData(
      {required this.family, required String requesterId})
      : super(requesterId);

  @override
  DeleteProductFamilyRawEventData toRawServiceEventData() {
    return DeleteProductFamilyRawEventData(
        messageId: messageId, requesterId: requesterId);
  }
}

class DeleteProductFamilyEvent
    extends ServiceEvent<DeleteProductFamilyResponse> {
  DeleteProductFamilyEvent({required super.eventData, super.callback})
      : super(DeleteProductFamily.eventId, DeleteProductFamily.eventName,
            DeleteProductFamily.serviceId);
}
