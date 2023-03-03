import 'package:graphql/client.dart';
import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/Infrastructure/StockService/api.dart';
import 'package:stock_manager/Infrastructure/services.dart';
import 'package:stock_manager/Infrastructure/GraphQlService/service.dart'
    as graphql_service;

class DeleteSize extends Command<DeleteSizeEventData, DeleteSizeRawEventData,
    DeleteSizeResponse> {
  static final eventId = StockApi.deleteSize.index;
  static final eventName = StockApi.deleteSize.name;
  static final serviceId = Services.stockService.index;
  final GraphQLClient graphQl;

  DeleteSize(this.graphQl) : super(eventId, eventName);

  @override
  Future<DeleteSizeResponse> handleEvent(DeleteSizeEventData eventData) async {
    final variables = graphql_service.Variables$Mutation$DeleteOneSizes(
        where: graphql_service.Input$SizesWhereUniqueInput(
            id: eventData.sizeId));

    final options =
        graphql_service.Options$Mutation$DeleteOneSizes(variables: variables);

    final result = await graphQl.mutate(options);

    if (result.hasException) {
      return DeleteSizeResponse(
          messageId: eventData.messageId,
          status: ServiceEventResponseStatus.error);
    }

    return DeleteSizeResponse(
        messageId: eventData.messageId,
        status: ServiceEventResponseStatus.success);
  }

  @override
  Future<DeleteSizeResponse> handleRawEvent(DeleteSizeRawEventData eventData) {
    throw UnimplementedError();
  }
}

class DeleteSizeResponse extends ServiceEventResponse {
  DeleteSizeResponse(
      {required int messageId,
      ServiceEventResponseStatus status = ServiceEventResponseStatus.success})
      : super(messageId, status);
}

class DeleteSizeRawEventData extends RawServiceEventData {
  DeleteSizeRawEventData({required int messageId, required String requesterId})
      : super(messageId, requesterId, DeleteSize.eventId);
}

class DeleteSizeEventData extends ServiceEventData<DeleteSizeRawEventData> {
  final int sizeId;
  DeleteSizeEventData({required this.sizeId, required String requesterId})
      : super(requesterId);

  @override
  DeleteSizeRawEventData toRawServiceEventData() {
    return DeleteSizeRawEventData(
        messageId: messageId, requesterId: requesterId);
  }
}

class DeleteSizeEvent extends ServiceEvent<DeleteSizeResponse> {
  DeleteSizeEvent({required super.eventData, super.callback})
      : super(DeleteSize.eventId, DeleteSize.eventName, DeleteSize.serviceId);
}
