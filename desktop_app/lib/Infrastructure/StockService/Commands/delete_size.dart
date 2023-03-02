
  import 'package:graphql/client.dart';
import 'package:stock_manager/Application/ServiceStore/service.dart';
  import 'package:stock_manager/Infrastructure/StockService/api.dart';
  import 'package:stock_manager/Infrastructure/services.dart';

  class DeleteSize extends Command<DeleteSizeEventData, DeleteSizeRawEventData,
    DeleteSizeResponse> {
  static final eventId = StockApi.deleteSize.index;
  static final eventName = StockApi.deleteSize.name;
  static final serviceId = Services.stockService.index;
  final GraphQLClient graphQl;

  DeleteSize(this.graphQl) : super(eventId, eventName);

  @override
  Future<DeleteSizeResponse> handleEvent(DeleteSizeEventData eventData) {
    throw UnimplementedError();
  }

  @override
  Future<DeleteSizeResponse> handleRawEvent(
      DeleteSizeRawEventData eventData) {
    throw UnimplementedError();
  }
  }

  class DeleteSizeResponse extends ServiceEventResponse {
  DeleteSizeResponse(super.messageId, super.responseType);
  }

  class DeleteSizeRawEventData extends RawServiceEventData {
  DeleteSizeRawEventData({required int messageId, required String requesterId})
      : super(messageId, requesterId, DeleteSize.eventId);
  }

  class DeleteSizeEventData extends ServiceEventData<DeleteSizeRawEventData> {
  final int sizeId;
  DeleteSizeEventData({required this.sizeId,required String requesterId}) : super(requesterId);

  @override
  DeleteSizeRawEventData toRawServiceEventData() {
    return DeleteSizeRawEventData(messageId: messageId, requesterId: requesterId);
  }
  }


class DeleteSizeEvent extends ServiceEvent<DeleteSizeResponse> {
  DeleteSizeEvent({required super.eventData, super.callback})
      : super(DeleteSize.eventId, DeleteSize.eventName, DeleteSize.serviceId);
}
  