
  import 'package:stock_manager/Application/ServiceStore/service.dart';
  import 'package:stock_manager/Infrastructure/DepositService/api.dart';
  import 'package:stock_manager/Infrastructure/services.dart';

  class RemoveDeposit extends Command<RemoveDepositEventData, RemoveDepositRawEventData,
    RemoveDepositResponse> {
  static final eventId = DepositApi.removeDeposit.index;
  static final eventName = DepositApi.removeDeposit.name;
  static final serviceId = Services.depositService.index;

  RemoveDeposit() : super(eventId, eventName);

  @override
  Future<RemoveDepositResponse> handleEvent(RemoveDepositEventData eventData) {
    throw UnimplementedError();
  }

  @override
  Future<RemoveDepositResponse> handleRawEvent(
      RemoveDepositRawEventData eventData) {
    throw UnimplementedError();
  }
  }

  class RemoveDepositResponse extends ServiceEventResponse {
  RemoveDepositResponse(super.messageId, super.responseType);
  }

  class RemoveDepositRawEventData extends RawServiceEventData {
  RemoveDepositRawEventData({required int messageId, required String requesterId})
      : super(messageId, requesterId, RemoveDeposit.eventId);
  }

  class RemoveDepositEventData extends ServiceEventData<RemoveDepositRawEventData> {
  RemoveDepositEventData(super.requesterId);

  @override
  RemoveDepositRawEventData toRawServiceEventData() {
    return RemoveDepositRawEventData(messageId: messageId, requesterId: requesterId);
  }
  }


class RemoveDepositEvent extends ServiceEvent<RemoveDepositResponse> {
  RemoveDepositEvent({required super.eventData, super.callback})
      : super(RemoveDeposit.eventId, RemoveDeposit.eventName, RemoveDeposit.serviceId);
}
  