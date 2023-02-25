import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/Domain/Models/transaction.dart';
import 'package:stock_manager/Infrastructure/DepositService/api.dart';
import 'package:stock_manager/Infrastructure/services.dart';

class RegisterDeposit extends Command<RegisterDepositEventData, RegisterDepositRawData,
    RegisterDepositResponse> {
  static final eventId = DepositApi.registerDeposit.index;
  static final eventName = DepositApi.registerDeposit.name;
  static final serviceId = Services.depositService.index;

  RegisterDeposit() : super(eventId, eventName);

  @override
  Future<RegisterDepositResponse> handleEvent(RegisterDepositEventData eventData) {
    throw UnimplementedError();
  }

  @override
  Future<RegisterDepositResponse> handleRawEvent(
      RegisterDepositRawData eventData) {
    throw UnimplementedError();
  }
}

class RegisterDepositResponse extends ServiceEventResponse {
  RegisterDepositResponse(super.messageId, super.responseType);
}

class RegisterDepositRawData extends RawServiceEventData {
  RegisterDepositRawData({required int messageId, required String requesterId})
      : super(messageId, requesterId, RegisterDeposit.eventId);
}

class RegisterDepositEventData extends ServiceEventData<RegisterDepositRawData> {
  final Record record;
  RegisterDepositEventData({required String requesterId, required this.record})
      : super(requesterId);

  @override
  RegisterDepositRawData toRawServiceEventData() {
    return RegisterDepositRawData(messageId: messageId, requesterId: requesterId);
  }
}

class RegisterDepositEvent extends ServiceEvent<RegisterDepositResponse> {
  RegisterDepositEvent({required super.eventData, super.callback})
      : super(RegisterDeposit.eventId, RegisterDeposit.eventName, RegisterDeposit.serviceId);
}