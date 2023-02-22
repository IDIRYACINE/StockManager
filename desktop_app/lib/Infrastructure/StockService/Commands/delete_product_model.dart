
  import 'package:stock_manager/Application/ServiceStore/service.dart';
  import 'package:stock_manager/Infrastructure/StockService/api.dart';

  class DeleteProductModel extends Command<EventData, RawEventData,
    DeleteProductModelResponse> {
  static final eventId = StockApi.deleteProductModel.index;
  static final eventName = StockApi.deleteProductModel.name;

  DeleteProductModel() : super(eventId, eventName);

  @override
  Future<DeleteProductModelResponse> handleEvent(EventData eventData) {
    throw UnimplementedError();
  }

  @override
  Future<DeleteProductModelResponse> handleRawEvent(
      RawEventData eventData) {
    throw UnimplementedError();
  }
  }

  class DeleteProductModelResponse extends ServiceEventResponse {
  DeleteProductModelResponse(super.messageId, super.responseType);
  }

  class RawEventData extends RawServiceEventData {
  RawEventData({required int messageId, required String requesterId})
      : super(messageId, requesterId, DeleteProductModel.eventId);
  }

  class EventData extends ServiceEventData<RawEventData> {
  EventData(super.requesterId);

  @override
  RawEventData toRawServiceEventData() {
    return RawEventData(messageId: messageId, requesterId: requesterId);
  }
  }
  