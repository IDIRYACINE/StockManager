import 'package:graphql/client.dart';
import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/Domain/Models/product.dart';
import 'package:stock_manager/Infrastructure/StockService/api.dart';
import 'package:stock_manager/Infrastructure/services.dart';
import 'package:stock_manager/Infrastructure/GraphQlService/service.dart'
    as graphql_service;

class LoadProductFamillies extends Command<LoadProductFamilliesEventData,
    LoadProductFamilliesRawEventData, LoadProductFamilliesResponse> {
  static final eventId = StockApi.loadProductFamillies.index;
  static final eventName = StockApi.loadProductFamillies.name;
  static final serviceId = Services.stockService.index;

  final GraphQLClient graphQl;

  LoadProductFamillies(this.graphQl) : super(eventId, eventName);

  @override
  Future<LoadProductFamilliesResponse> handleEvent(
      LoadProductFamilliesEventData eventData) async {
    final QueryOptions options =
        graphql_service.Options$Query$ProductFamilies();

    final result = await graphQl.query(options);

    if (result.hasException) {
      return LoadProductFamilliesResponse(
          messageId: eventData.messageId,
          status: ServiceEventResponseStatus.error,
          famillies: []);
    }

    final json = result.data!['productFamilies'] as List<dynamic>;

    final List<ProductFamily> famillies = productFamiliesFromJsonList(json);

    return LoadProductFamilliesResponse(
        messageId: eventData.messageId, famillies: famillies);
  }

  @override
  Future<LoadProductFamilliesResponse> handleRawEvent(
      LoadProductFamilliesRawEventData eventData) {
    throw UnimplementedError();
  }
}

class LoadProductFamilliesResponse extends ServiceEventResponse {
  final List<ProductFamily> famillies;
  LoadProductFamilliesResponse(
      {required int messageId,
      required this.famillies,
      ServiceEventResponseStatus status = ServiceEventResponseStatus.success})
      : super(messageId, status);
}

class LoadProductFamilliesRawEventData extends RawServiceEventData {
  LoadProductFamilliesRawEventData(
      {required int messageId, required String requesterId})
      : super(messageId, requesterId, LoadProductFamillies.eventId);
}

class LoadProductFamilliesEventData
    extends ServiceEventData<LoadProductFamilliesRawEventData> {
  LoadProductFamilliesEventData({required String requesterId})
      : super(requesterId);

  @override
  LoadProductFamilliesRawEventData toRawServiceEventData() {
    return LoadProductFamilliesRawEventData(
        messageId: messageId, requesterId: requesterId);
  }
}

class LoadProductFamilliesEvent
    extends ServiceEvent<LoadProductFamilliesResponse> {
  LoadProductFamilliesEvent({required super.eventData, super.callback})
      : super(LoadProductFamillies.eventId, LoadProductFamillies.eventName,
            LoadProductFamillies.serviceId);
}
