
  import 'package:stock_manager/Application/ServiceStore/service.dart';
  import 'package:stock_manager/Infrastructure/DepositService/api.dart';
  import 'package:stock_manager/Infrastructure/services.dart';

  class SearchDeposit extends Command<SearchDepositEventData, SearchDepositRawEventData,
    SearchDepositResponse> {
  static final eventId = DepositApi.searchDeposit.index;
  static final eventName = DepositApi.searchDeposit.name;
  static final serviceId = Services.depositService.index;

  SearchDeposit() : super(eventId, eventName);

  @override
  Future<SearchDepositResponse> handleEvent(SearchDepositEventData eventData) {
    throw UnimplementedError();
  }

  @override
  Future<SearchDepositResponse> handleRawEvent(
      SearchDepositRawEventData eventData) {
    throw UnimplementedError();
  }
  }

  class SearchDepositResponse extends ServiceEventResponse {
  SearchDepositResponse(super.messageId, super.responseType);
  }

  class SearchDepositRawEventData extends RawServiceEventData {
  SearchDepositRawEventData({required int messageId, required String requesterId})
      : super(messageId, requesterId, SearchDeposit.eventId);
  }

  class SearchDepositEventData extends ServiceEventData<SearchDepositRawEventData> {
  SearchDepositEventData(super.requesterId);

  @override
  SearchDepositRawEventData toRawServiceEventData() {
    return SearchDepositRawEventData(messageId: messageId, requesterId: requesterId);
  }
  }


class SearchDepositEvent extends ServiceEvent<SearchDepositResponse> {
  SearchDepositEvent({required super.eventData, super.callback})
      : super(SearchDeposit.eventId, SearchDeposit.eventName, SearchDeposit.serviceId);
}
  