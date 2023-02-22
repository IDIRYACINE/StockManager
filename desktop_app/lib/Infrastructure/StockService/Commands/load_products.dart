
  import 'package:stock_manager/Application/ServiceStore/service.dart';
  import 'package:stock_manager/Infrastructure/StockService/api.dart';

  class LoadProducts extends Command<EventData, RawEventData,
    LoadProductsResponse> {
  static final eventId = StockApi.loadProducts.index;
  static final eventName = StockApi.loadProducts.name;

  LoadProducts() : super(eventId, eventName);

  @override
  Future<LoadProductsResponse> handleEvent(EventData eventData) {
    throw UnimplementedError();
  }

  @override
  Future<LoadProductsResponse> handleRawEvent(
      RawEventData eventData) {
    throw UnimplementedError();
  }
  }

  class LoadProductsResponse extends ServiceEventResponse {
  LoadProductsResponse(super.messageId, super.responseType);
  }

  class RawEventData extends RawServiceEventData {
  RawEventData({required int messageId, required String requesterId})
      : super(messageId, requesterId, LoadProducts.eventId);
  }

  class EventData extends ServiceEventData<RawEventData> {
  EventData(super.requesterId);

  @override
  RawEventData toRawServiceEventData() {
    return RawEventData(messageId: messageId, requesterId: requesterId);
  }
  }
  