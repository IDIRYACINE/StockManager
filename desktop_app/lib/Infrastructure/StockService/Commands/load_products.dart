
  import 'package:stock_manager/Application/ServiceStore/service.dart';
  import 'package:stock_manager/Infrastructure/StockService/api.dart';
  import 'package:stock_manager/Infrastructure/services.dart';

  class LoadProducts extends Command<LoadProductsEventData, LoadProductsRawEventData,
    LoadProductsResponse> {
  static final eventId = StockApi.loadProducts.index;
  static final eventName = StockApi.loadProducts.name;
  static final serviceId = Services.stockService.index;

  LoadProducts() : super(eventId, eventName);

  @override
  Future<LoadProductsResponse> handleEvent(LoadProductsEventData eventData) {
    throw UnimplementedError();
  }

  @override
  Future<LoadProductsResponse> handleRawEvent(
      LoadProductsRawEventData eventData) {
    throw UnimplementedError();
  }
  }

  class LoadProductsResponse extends ServiceEventResponse {
  LoadProductsResponse(super.messageId, super.responseType);
  }

  class LoadProductsRawEventData extends RawServiceEventData {
  LoadProductsRawEventData({required int messageId, required String requesterId})
      : super(messageId, requesterId, LoadProducts.eventId);
  }

  class LoadProductsEventData extends ServiceEventData<LoadProductsRawEventData> {
  LoadProductsEventData(super.requesterId);

  @override
  LoadProductsRawEventData toRawServiceEventData() {
    return LoadProductsRawEventData(messageId: messageId, requesterId: requesterId);
  }
  }


class LoadProductsEvent extends ServiceEvent<LoadProductsResponse> {
  LoadProductsEvent({required super.eventData, super.callback})
      : super(LoadProducts.eventId, LoadProducts.eventName, LoadProducts.serviceId);
}
  