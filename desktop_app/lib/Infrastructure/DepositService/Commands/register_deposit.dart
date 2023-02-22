import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/Infrastructure/DepositService/api.dart';

class RegisterDeposit extends Command<EventData, RawEventData,
    RegisterDepositTransactionResponse> {
  static final eventId = DepositApi.registerDeposit.index;
  static final eventName = DepositApi.registerDeposit.name;

  RegisterDeposit() : super(eventId, eventName);

  @override
  Future<RegisterDepositTransactionResponse> handleEvent(EventData eventData) {
    throw UnimplementedError();
  }

  @override
  Future<RegisterDepositTransactionResponse> handleRawEvent(
      RawEventData eventData) {
    throw UnimplementedError();
  }
}

class RegisterDepositTransactionResponse extends ServiceEventResponse {
  RegisterDepositTransactionResponse(super.messageId, super.responseType);
}

class RawEventData extends RawServiceEventData {
  RawEventData({required int messageId, required String requesterId})
      : super(messageId, requesterId, RegisterDeposit.eventId);
}

class EventData extends ServiceEventData<RawEventData> {
  EventData(super.requesterId);

  @override
  RawEventData toRawServiceEventData() {
    return RawEventData(messageId: messageId, requesterId: requesterId);
  }
}
