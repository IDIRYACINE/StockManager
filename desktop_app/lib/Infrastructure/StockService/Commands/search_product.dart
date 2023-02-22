
  import 'package:stock_manager/Application/ServiceStore/service.dart';
  import 'package:stock_manager/Infrastructure/StockService/api.dart';
  import 'package:stock_manager/Infrastructure/services.dart';
import 'package:stock_manager/Types/i_database.dart';

  class SearchProduct extends Command<SearchProductEventData, SearchProductRawEventData,
    SearchProductResponse> {
  static final eventId = StockApi.searchProduct.index;
  static final eventName = StockApi.searchProduct.name;
  static final serviceId = Services.stockService.index;

  SearchProduct() : super(eventId, eventName);

  @override
  Future<SearchProductResponse> handleEvent(SearchProductEventData eventData) {
    throw UnimplementedError();
  }

  @override
  Future<SearchProductResponse> handleRawEvent(
      SearchProductRawEventData eventData) {
    throw UnimplementedError();
  }
  }

  class SearchProductResponse extends ServiceEventResponse {
  SearchProductResponse(super.messageId, super.responseType);
  }

  class SearchProductRawEventData extends RawServiceEventData {
  SearchProductRawEventData({required int messageId, required String requesterId})
      : super(messageId, requesterId, SearchProduct.eventId);
  }

  class SearchProductEventData extends ServiceEventData<SearchProductRawEventData> {
    final SearchWrapper searchParams;
  SearchProductEventData({required String requesterId,required this.searchParams}) : super(requesterId);

  @override
  SearchProductRawEventData toRawServiceEventData() {
    return SearchProductRawEventData(messageId: messageId, requesterId: requesterId);
  }
  }


class SearchProductEvent extends ServiceEvent<SearchProductResponse> {
  SearchProductEvent({required super.eventData, super.callback})
      : super(SearchProduct.eventId, SearchProduct.eventName, SearchProduct.serviceId);
}
  