
  import 'package:stock_manager/Application/ServiceStore/service.dart';
  import 'package:stock_manager/Infrastructure/TransactionService/api.dart';
  import 'package:stock_manager/Infrastructure/services.dart';

  class RegisterTransaction extends Command<RegisterTransactionEventData, RegisterTransactionRawEventData,
    RegisterTransactionResponse> {
  static final eventId = TransactionApi.registerTransaction.index;
  static final eventName = TransactionApi.registerTransaction.name;
  static final serviceId = Services.transactionService.index;

  RegisterTransaction() : super(eventId, eventName);

  @override
  Future<RegisterTransactionResponse> handleEvent(RegisterTransactionEventData eventData) async {
    throw UnimplementedError();
  }

  @override
  Future<RegisterTransactionResponse> handleRawEvent(
      RegisterTransactionRawEventData eventData) {
    throw UnimplementedError();
  }
  }

  class RegisterTransactionResponse extends ServiceEventResponse {
  RegisterTransactionResponse(super.messageId, super.responseType);
  }

  class RegisterTransactionRawEventData extends RawServiceEventData {
  RegisterTransactionRawEventData({required int messageId, required String requesterId})
      : super(messageId, requesterId, RegisterTransaction.eventId);
  }

  class RegisterTransactionEventData extends ServiceEventData<RegisterTransactionRawEventData> {
  RegisterTransactionEventData(super.requesterId);

  @override
  RegisterTransactionRawEventData toRawServiceEventData() {
    return RegisterTransactionRawEventData(messageId: messageId, requesterId: requesterId);
  }
  }


class RegisterTransactionEvent extends ServiceEvent<RegisterTransactionResponse> {
  RegisterTransactionEvent({required super.eventData, super.callback})
      : super(RegisterTransaction.eventId, RegisterTransaction.eventName, RegisterTransaction.serviceId);
}
  