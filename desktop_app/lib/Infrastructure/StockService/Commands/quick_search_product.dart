
  import 'package:stock_manager/Application/ServiceStore/service.dart';
  import 'package:stock_manager/Infrastructure/StockService/api.dart';

  class QuickSearchProduct extends Command<EventData, RawEventData,
    QuickSearchProductResponse> {
  static final eventId = StockApi.quickSearchProduct.index;
  static final eventName = StockApi.quickSearchProduct.name;

  QuickSearchProduct() : super(eventId, eventName);

  @override
  Future<QuickSearchProductResponse> handleEvent(EventData eventData) {
    throw UnimplementedError();
  }

  @override
  Future<QuickSearchProductResponse> handleRawEvent(
      RawEventData eventData) {
    throw UnimplementedError();
  }
  }

  class QuickSearchProductResponse extends ServiceEventResponse {
  QuickSearchProductResponse(super.messageId, super.responseType);
  }

  class RawEventData extends RawServiceEventData {
  RawEventData({required int messageId, required String requesterId})
      : super(messageId, requesterId, QuickSearchProduct.eventId);
  }

  class EventData extends ServiceEventData<RawEventData> {
  EventData(super.requesterId);

  @override
  RawEventData toRawServiceEventData() {
    return RawEventData(messageId: messageId, requesterId: requesterId);
  }
  }
  