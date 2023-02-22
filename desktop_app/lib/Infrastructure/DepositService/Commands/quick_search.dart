
  import 'package:stock_manager/Application/ServiceStore/service.dart';
  import 'package:stock_manager/Infrastructure/DepositService/api.dart';
  import 'package:stock_manager/Infrastructure/services.dart';

  class QuickSearchDeposit extends Command<QuickSearchDepositEventData, QuickSearchDepositRawEventData,
    QuickSearchDepositResponse> {
  static final eventId = DepositApi.quickSearchDeposit.index;
  static final eventName = DepositApi.quickSearchDeposit.name;
  static final serviceId = Services.depositService.index;

  QuickSearchDeposit() : super(eventId, eventName);

  @override
  Future<QuickSearchDepositResponse> handleEvent(QuickSearchDepositEventData eventData) {
    throw UnimplementedError();
  }

  @override
  Future<QuickSearchDepositResponse> handleRawEvent(
      QuickSearchDepositRawEventData eventData) {
    throw UnimplementedError();
  }
  }

  class QuickSearchDepositResponse extends ServiceEventResponse {
  QuickSearchDepositResponse(super.messageId, super.responseType);
  }

  class QuickSearchDepositRawEventData extends RawServiceEventData {
  QuickSearchDepositRawEventData({required int messageId, required String requesterId})
      : super(messageId, requesterId, QuickSearchDeposit.eventId);
  }

  class QuickSearchDepositEventData extends ServiceEventData<QuickSearchDepositRawEventData> {
    final String searchValue;
  QuickSearchDepositEventData({required String requesterId, required this.searchValue})
      : super(requesterId);

  @override
  QuickSearchDepositRawEventData toRawServiceEventData() {
    return QuickSearchDepositRawEventData(messageId: messageId, requesterId: requesterId);
  }
  }


class QuickSearchDepositEvent extends ServiceEvent<QuickSearchDepositResponse> {
  QuickSearchDepositEvent({required super.eventData, super.callback})
      : super(QuickSearchDeposit.eventId, QuickSearchDeposit.eventName, QuickSearchDeposit.serviceId);
}
  