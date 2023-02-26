import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/Domain/Models/product.dart';
import 'package:stock_manager/Infrastructure/StockService/api.dart';
import 'package:stock_manager/Infrastructure/services.dart';
import 'package:stock_manager/Types/i_database.dart';
import 'package:graphql/client.dart';
import 'package:stock_manager/Infrastructure/GraphQlService/service.dart'
    as graphql_service;

class SearchProduct extends Command<SearchProductEventData,
    SearchProductRawEventData, SearchProductResponse> {
  static final eventId = StockApi.searchProduct.index;
  static final eventName = StockApi.searchProduct.name;
  static final serviceId = Services.stockService.index;

  final GraphQLClient graphQl;

  SearchProduct(this.graphQl) : super(eventId, eventName);

  @override
  Future<SearchProductResponse> handleEvent(
      SearchProductEventData eventData) async {
    final QueryOptions options =
        graphql_service.Options$Query$FindManyProducts();

    final result = await graphQl.query(options);

    if (result.hasException) {
      return SearchProductResponse(
        messageId: eventData.messageId,
        status: ServiceEventResponseStatus.error,
        products: [],
      );
    }
    
    final json = result.data!['findManyProducts'] as List<dynamic>;

    final List<Product> products = productsFromJsonList(json);

    return SearchProductResponse(
        messageId: eventData.messageId, products: products);
  }

  @override
  Future<SearchProductResponse> handleRawEvent(
      SearchProductRawEventData eventData) {
    throw UnimplementedError();
  }
}

class SearchProductResponse extends ServiceEventResponse {
  final List<Product> products;
  SearchProductResponse(
      {required int messageId,
      required this.products,
      ServiceEventResponseStatus status = ServiceEventResponseStatus.success})
      : super(messageId, status);
}

class SearchProductRawEventData extends RawServiceEventData {
  SearchProductRawEventData(
      {required int messageId, required String requesterId})
      : super(messageId, requesterId, SearchProduct.eventId);
}

class SearchProductEventData
    extends ServiceEventData<SearchProductRawEventData> {
  final SearchWrapper searchParams;
  SearchProductEventData(
      {required String requesterId, required this.searchParams})
      : super(requesterId);

  @override
  SearchProductRawEventData toRawServiceEventData() {
    return SearchProductRawEventData(
        messageId: messageId, requesterId: requesterId);
  }
}

class SearchProductEvent extends ServiceEvent<SearchProductResponse> {
  SearchProductEvent({required super.eventData, super.callback})
      : super(SearchProduct.eventId, SearchProduct.eventName,
            SearchProduct.serviceId);
}
