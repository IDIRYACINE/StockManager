
  import 'package:stock_manager/Application/ServiceStore/service.dart';
  import 'package:stock_manager/Infrastructure/PurchaseService/api.dart';

  class RegisterPurchase extends Command<EventData, RawEventData,
    RegisterPurchaseResponse> {
  static final eventId = PurchaseApi.registerPurchase.index;
  static final eventName = PurchaseApi.registerPurchase.name;

  RegisterPurchase() : super(eventId, eventName);

  @override
  Future<RegisterPurchaseResponse> handleEvent(EventData eventData) {
    throw UnimplementedError();
  }

  @override
  Future<RegisterPurchaseResponse> handleRawEvent(
      RawEventData eventData) {
    throw UnimplementedError();
  }
  }

  class RegisterPurchaseResponse extends ServiceEventResponse {
  RegisterPurchaseResponse(super.messageId, super.responseType);
  }

  class RawEventData extends RawServiceEventData {
  RawEventData({required int messageId, required String requesterId})
      : super(messageId, requesterId, RegisterPurchase.eventId);
  }

  class EventData extends ServiceEventData<RawEventData> {
  EventData(super.requesterId);

  @override
  RawEventData toRawServiceEventData() {
    return RawEventData(messageId: messageId, requesterId: requesterId);
  }
  }
  