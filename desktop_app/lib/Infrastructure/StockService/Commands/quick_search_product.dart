
  import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/DataModels/models.dart';
  import 'package:stock_manager/Infrastructure/StockService/api.dart';
  import 'package:stock_manager/Infrastructure/services.dart';

  class QuickSearchProduct extends Command<QuickSearchProductEventData, QuickSearchProductRawEventData,
    QuickSearchProductResponse> {
  static final eventId = StockApi.quickSearchProduct.index;
  static final eventName = StockApi.quickSearchProduct.name;
  static final serviceId = Services.stockService.index;

  QuickSearchProduct() : super(eventId, eventName);

  @override
  Future<QuickSearchProductResponse> handleEvent(QuickSearchProductEventData eventData) {
    throw UnimplementedError();
  }

  @override
  Future<QuickSearchProductResponse> handleRawEvent(
      QuickSearchProductRawEventData eventData) {
    throw UnimplementedError();
  }
  }

  class QuickSearchProductResponse extends ServiceEventResponse {
    final List<Product> products;
  QuickSearchProductResponse(super.messageId, super.responseType, this.products);
  }

  class QuickSearchProductRawEventData extends RawServiceEventData {
  QuickSearchProductRawEventData({required int messageId, required String requesterId})
      : super(messageId, requesterId, QuickSearchProduct.eventId);
  }

  class QuickSearchProductEventData extends ServiceEventData<QuickSearchProductRawEventData> {
    final String searchValue;


  QuickSearchProductEventData({required String requesterId,required this.searchValue}) : super(requesterId);

  @override
  QuickSearchProductRawEventData toRawServiceEventData() {
    return QuickSearchProductRawEventData(messageId: messageId, requesterId: requesterId);
  }
  }


class QuickSearchProductEvent extends ServiceEvent<QuickSearchProductResponse> {
  QuickSearchProductEvent({required super.eventData, super.callback})
      : super(QuickSearchProduct.eventId, QuickSearchProduct.eventName, QuickSearchProduct.serviceId);
}
  