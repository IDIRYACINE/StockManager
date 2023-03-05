import 'package:graphql/client.dart';
import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/Domain/Models/product.dart';
import 'package:stock_manager/Infrastructure/StockService/api.dart';
import 'package:stock_manager/Infrastructure/services.dart';
import 'package:stock_manager/Infrastructure/GraphQlService/service.dart'
    as graphql_service;

class SearchProductFamillies extends Command<SearchProductFamilliesEventData,
    SearchProductFamilliesRawEventData, SearchProductFamilliesResponse> {
  static final eventId = StockApi.searchProductFamily.index;
  static final eventName = StockApi.searchProductFamily.name;
  static final serviceId = Services.stockService.index;

  final GraphQLClient graphQl;

  SearchProductFamillies(this.graphQl) : super(eventId, eventName);

  @override
  Future<SearchProductFamilliesResponse> handleEvent(
      SearchProductFamilliesEventData eventData) async {
    final QueryOptions options =
        graphql_service.Options$Query$ProductFamilies();

    final result = await graphQl.query(options);

    if (result.hasException) {
      return SearchProductFamilliesResponse(
          messageId: eventData.messageId,
          status: ServiceEventResponseStatus.error,
          famillies: []);
    }

    final json = result.data!['productFamilies'] as List<dynamic>;

    final List<ProductFamily> famillies = productFamiliesFromJsonList(json);

    return SearchProductFamilliesResponse(
        messageId: eventData.messageId, famillies: famillies);
  }

  @override
  Future<SearchProductFamilliesResponse> handleRawEvent(
      SearchProductFamilliesRawEventData eventData) {
    throw UnimplementedError();
  }
}

class SearchProductFamilliesResponse extends ServiceEventResponse {
  final List<ProductFamily> famillies;
  SearchProductFamilliesResponse(
      {required int messageId,
      required this.famillies,
      ServiceEventResponseStatus status = ServiceEventResponseStatus.success})
      : super(messageId, status);
}

class SearchProductFamilliesRawEventData extends RawServiceEventData {
  SearchProductFamilliesRawEventData(
      {required int messageId, required String requesterId})
      : super(messageId, requesterId, SearchProductFamillies.eventId);
}

class SearchProductFamilliesEventData
    extends ServiceEventData<SearchProductFamilliesRawEventData> {
  final String familyId;
  SearchProductFamilliesEventData(
      {required this.familyId, required String requesterId})
      : super(requesterId);

  @override
  SearchProductFamilliesRawEventData toRawServiceEventData() {
    return SearchProductFamilliesRawEventData(
        messageId: messageId, requesterId: requesterId);
  }
}

class SearchProductFamilliesEvent
    extends ServiceEvent<SearchProductFamilliesResponse> {
  SearchProductFamilliesEvent({required super.eventData, super.callback})
      : super(SearchProductFamillies.eventId, SearchProductFamillies.eventName,
            SearchProductFamillies.serviceId);
}
