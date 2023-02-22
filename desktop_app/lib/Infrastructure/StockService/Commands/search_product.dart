
  import 'package:stock_manager/Application/ServiceStore/service.dart';
  import 'package:stock_manager/Infrastructure/StockService/api.dart';

  class SearchProduct extends Command<EventData, RawEventData,
    SearchProductResponse> {
  static final eventId = StockApi.searchProduct.index;
  static final eventName = StockApi.searchProduct.name;

  SearchProduct() : super(eventId, eventName);

  @override
  Future<SearchProductResponse> handleEvent(EventData eventData) {
    throw UnimplementedError();
  }

  @override
  Future<SearchProductResponse> handleRawEvent(
      RawEventData eventData) {
    throw UnimplementedError();
  }
  }

  class SearchProductResponse extends ServiceEventResponse {
  SearchProductResponse(super.messageId, super.responseType);
  }

  class RawEventData extends RawServiceEventData {
  RawEventData({required int messageId, required String requesterId})
      : super(messageId, requesterId, SearchProduct.eventId);
  }

  class EventData extends ServiceEventData<RawEventData> {
  EventData(super.requesterId);

  @override
  RawEventData toRawServiceEventData() {
    return RawEventData(messageId: messageId, requesterId: requesterId);
  }
  }
  