
  import 'package:stock_manager/Application/ServiceStore/service.dart';
  import 'package:stock_manager/Infrastructure/DepositService/api.dart';

  class QuickSearchDeposit extends Command<EventData, RawEventData,
    QuickSearchDepositResponse> {
  static final eventId = DepositApi.quickSearchDeposit.index;
  static final eventName = DepositApi.quickSearchDeposit.name;

  QuickSearchDeposit() : super(eventId, eventName);

  @override
  Future<QuickSearchDepositResponse> handleEvent(EventData eventData) {
    throw UnimplementedError();
  }

  @override
  Future<QuickSearchDepositResponse> handleRawEvent(
      RawEventData eventData) {
    throw UnimplementedError();
  }
  }

  class QuickSearchDepositResponse extends ServiceEventResponse {
  QuickSearchDepositResponse(super.messageId, super.responseType);
  }

  class RawEventData extends RawServiceEventData {
  RawEventData({required int messageId, required String requesterId})
      : super(messageId, requesterId, QuickSearchDeposit.eventId);
  }

  class EventData extends ServiceEventData<RawEventData> {
  EventData(super.requesterId);

  @override
  RawEventData toRawServiceEventData() {
    return RawEventData(messageId: messageId, requesterId: requesterId);
  }
  }
  