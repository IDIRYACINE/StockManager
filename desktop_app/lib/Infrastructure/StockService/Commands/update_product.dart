
  import 'package:stock_manager/Application/ServiceStore/service.dart';
  import 'package:stock_manager/Infrastructure/StockService/api.dart';

  class UpdateProduct extends Command<EventData, RawEventData,
    UpdateProductResponse> {
  static final eventId = StockApi.updateProduct.index;
  static final eventName = StockApi.updateProduct.name;

  UpdateProduct() : super(eventId, eventName);

  @override
  Future<UpdateProductResponse> handleEvent(EventData eventData) {
    throw UnimplementedError();
  }

  @override
  Future<UpdateProductResponse> handleRawEvent(
      RawEventData eventData) {
    throw UnimplementedError();
  }
  }

  class UpdateProductResponse extends ServiceEventResponse {
  UpdateProductResponse(super.messageId, super.responseType);
  }

  class RawEventData extends RawServiceEventData {
  RawEventData({required int messageId, required String requesterId})
      : super(messageId, requesterId, UpdateProduct.eventId);
  }

  class EventData extends ServiceEventData<RawEventData> {
  EventData(super.requesterId);

  @override
  RawEventData toRawServiceEventData() {
    return RawEventData(messageId: messageId, requesterId: requesterId);
  }
  }
  