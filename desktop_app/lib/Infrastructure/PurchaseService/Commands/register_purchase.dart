
  import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/DataModels/models.dart';
  import 'package:stock_manager/Infrastructure/PurchaseService/api.dart';
  import 'package:stock_manager/Infrastructure/services.dart';

  class RegisterPurchase extends Command<RegisterPurchaseEventData, RegisterPurchaseRawEventData,
    RegisterPurchaseResponse> {
  static final eventId = PurchaseApi.registerPurchase.index;
  static final eventName = PurchaseApi.registerPurchase.name;
  static final serviceId = Services.purchaseService.index;

  RegisterPurchase() : super(eventId, eventName);

  @override
  Future<RegisterPurchaseResponse> handleEvent(RegisterPurchaseEventData eventData) {
    throw UnimplementedError();
  }

  @override
  Future<RegisterPurchaseResponse> handleRawEvent(
      RegisterPurchaseRawEventData eventData) {
    throw UnimplementedError();
  }
  }

  class RegisterPurchaseResponse extends ServiceEventResponse {
  RegisterPurchaseResponse(super.messageId, super.responseType);
  }

  class RegisterPurchaseRawEventData extends RawServiceEventData {
  RegisterPurchaseRawEventData({required int messageId, required String requesterId})
      : super(messageId, requesterId, RegisterPurchase.eventId);
  }

  class RegisterPurchaseEventData extends ServiceEventData<RegisterPurchaseRawEventData> {
    final Record record;
  RegisterPurchaseEventData({required String requesterId,required this.record}) : super(requesterId);

  @override
  RegisterPurchaseRawEventData toRawServiceEventData() {
    return RegisterPurchaseRawEventData(messageId: messageId, requesterId: requesterId);
  }
  }


class RegisterPurchaseEvent extends ServiceEvent<RegisterPurchaseResponse> {
  RegisterPurchaseEvent({required super.eventData, super.callback})
      : super(RegisterPurchase.eventId, RegisterPurchase.eventName, RegisterPurchase.serviceId);
}
  