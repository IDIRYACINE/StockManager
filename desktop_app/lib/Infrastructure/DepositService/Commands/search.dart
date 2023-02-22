
  import 'package:stock_manager/Application/ServiceStore/service.dart';
  import 'package:stock_manager/Infrastructure/DepositService/api.dart';

  class SearchDeposit extends Command<EventData, RawEventData,
    SearchDepositResponse> {
  static final eventId = DepositApi.searchDeposit.index;
  static final eventName = DepositApi.searchDeposit.name;

  SearchDeposit() : super(eventId, eventName);

  @override
  Future<SearchDepositResponse> handleEvent(EventData eventData) {
    throw UnimplementedError();
  }

  @override
  Future<SearchDepositResponse> handleRawEvent(
      RawEventData eventData) {
    throw UnimplementedError();
  }
  }

  class SearchDepositResponse extends ServiceEventResponse {
  SearchDepositResponse(super.messageId, super.responseType);
  }

  class RawEventData extends RawServiceEventData {
  RawEventData({required int messageId, required String requesterId})
      : super(messageId, requesterId, SearchDeposit.eventId);
  }

  class EventData extends ServiceEventData<RawEventData> {
  EventData(super.requesterId);

  @override
  RawEventData toRawServiceEventData() {
    return RawEventData(messageId: messageId, requesterId: requesterId);
  }
  }
  