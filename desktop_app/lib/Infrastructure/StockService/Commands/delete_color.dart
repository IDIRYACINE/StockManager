
  import 'package:graphql/client.dart';
import 'package:stock_manager/Application/ServiceStore/service.dart';
  import 'package:stock_manager/Infrastructure/StockService/api.dart';
  import 'package:stock_manager/Infrastructure/services.dart';

  class DeleteColor extends Command<DeleteColorEventData, DeleteColorRawEventData,
    DeleteColorResponse> {
  static final eventId = StockApi.deleteColor.index;
  static final eventName = StockApi.deleteColor.name;
  static final serviceId = Services.stockService.index;
  final GraphQLClient graphQl;

  DeleteColor(this.graphQl) : super(eventId, eventName);

  @override
  Future<DeleteColorResponse> handleEvent(DeleteColorEventData eventData) {
    throw UnimplementedError();
  }

  @override
  Future<DeleteColorResponse> handleRawEvent(
      DeleteColorRawEventData eventData) {
    throw UnimplementedError();
  }
  }

  class DeleteColorResponse extends ServiceEventResponse {
  DeleteColorResponse(super.messageId, super.responseType);
  }

  class DeleteColorRawEventData extends RawServiceEventData {
  DeleteColorRawEventData({required int messageId, required String requesterId})
      : super(messageId, requesterId, DeleteColor.eventId);
  }

  class DeleteColorEventData extends ServiceEventData<DeleteColorRawEventData> {
  final int colorId;
  DeleteColorEventData({required this.colorId,required String requesterId}) : super(requesterId);

  @override
  DeleteColorRawEventData toRawServiceEventData() {
    return DeleteColorRawEventData(messageId: messageId, requesterId: requesterId);
  }
  }


class DeleteColorEvent extends ServiceEvent<DeleteColorResponse> {
  DeleteColorEvent({required super.eventData, super.callback})
      : super(DeleteColor.eventId, DeleteColor.eventName, DeleteColor.serviceId);
}
  