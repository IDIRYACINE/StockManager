
  import 'package:stock_manager/Application/ServiceStore/service.dart';
  import 'package:stock_manager/Infrastructure/DepositService/api.dart';

  class RemoveDeposit extends Command<EventData, RawEventData,
    RemoveDepositResponse> {
  static final eventId = DepositApi.removeDeposit.index;
  static final eventName = DepositApi.removeDeposit.name;

  RemoveDeposit() : super(eventId, eventName);

  @override
  Future<RemoveDepositResponse> handleEvent(EventData eventData) {
    throw UnimplementedError();
  }

  @override
  Future<RemoveDepositResponse> handleRawEvent(
      RawEventData eventData) {
    throw UnimplementedError();
  }
  }

  class RemoveDepositResponse extends ServiceEventResponse {
  RemoveDepositResponse(super.messageId, super.responseType);
  }

  class RawEventData extends RawServiceEventData {
  RawEventData({required int messageId, required String requesterId})
      : super(messageId, requesterId, RemoveDeposit.eventId);
  }

  class EventData extends ServiceEventData<RawEventData> {
  EventData(super.requesterId);

  @override
  RawEventData toRawServiceEventData() {
    return RawEventData(messageId: messageId, requesterId: requesterId);
  }
  }
  