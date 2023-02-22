
  import 'package:stock_manager/Application/ServiceStore/service.dart';
  import 'package:stock_manager/Infrastructure/StockService/api.dart';

  class RegisterProduct extends Command<EventData, RawEventData,
    RegisterProductResponse> {
  static final eventId = StockApi.registerProduct.index;
  static final eventName = StockApi.registerProduct.name;

  RegisterProduct() : super(eventId, eventName);

  @override
  Future<RegisterProductResponse> handleEvent(EventData eventData) {
    throw UnimplementedError();
  }

  @override
  Future<RegisterProductResponse> handleRawEvent(
      RawEventData eventData) {
    throw UnimplementedError();
  }
  }

  class RegisterProductResponse extends ServiceEventResponse {
  RegisterProductResponse(super.messageId, super.responseType);
  }

  class RawEventData extends RawServiceEventData {
  RawEventData({required int messageId, required String requesterId})
      : super(messageId, requesterId, RegisterProduct.eventId);
  }

  class EventData extends ServiceEventData<RawEventData> {
  EventData(super.requesterId);

  @override
  RawEventData toRawServiceEventData() {
    return RawEventData(messageId: messageId, requesterId: requesterId);
  }
  }
  