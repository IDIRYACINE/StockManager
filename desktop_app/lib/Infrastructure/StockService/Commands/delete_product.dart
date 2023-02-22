
  import 'package:stock_manager/Application/ServiceStore/service.dart';
  import 'package:stock_manager/Infrastructure/StockService/api.dart';

  class DeleteProduct extends Command<EventData, RawEventData,
    DeleteProductResponse> {
  static final eventId = StockApi.deleteProduct.index;
  static final eventName = StockApi.deleteProduct.name;

  DeleteProduct() : super(eventId, eventName);

  @override
  Future<DeleteProductResponse> handleEvent(EventData eventData) {
    throw UnimplementedError();
  }

  @override
  Future<DeleteProductResponse> handleRawEvent(
      RawEventData eventData) {
    throw UnimplementedError();
  }
  }

  class DeleteProductResponse extends ServiceEventResponse {
  DeleteProductResponse(super.messageId, super.responseType);
  }

  class RawEventData extends RawServiceEventData {
  RawEventData({required int messageId, required String requesterId})
      : super(messageId, requesterId, DeleteProduct.eventId);
  }

  class EventData extends ServiceEventData<RawEventData> {
  EventData(super.requesterId);

  @override
  RawEventData toRawServiceEventData() {
    return RawEventData(messageId: messageId, requesterId: requesterId);
  }
  }
  