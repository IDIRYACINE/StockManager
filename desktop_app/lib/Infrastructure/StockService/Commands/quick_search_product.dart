import 'package:graphql/client.dart';
import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/Domain/Models/product.dart';
import 'package:stock_manager/Infrastructure/StockService/api.dart';
import 'package:stock_manager/Infrastructure/services.dart';
import 'package:stock_manager/Infrastructure/GraphQlService/service.dart'
    as graphql_service;

class QuickSearchProduct extends Command<QuickSearchProductEventData,
    QuickSearchProductRawEventData, QuickSearchProductResponse> {
  static final eventId = StockApi.quickSearchProduct.index;
  static final eventName = StockApi.quickSearchProduct.name;
  static final serviceId = Services.stockService.index;

  final GraphQLClient graphQl;

  QuickSearchProduct(this.graphQl) : super(eventId, eventName);

  @override
  Future<QuickSearchProductResponse> handleEvent(
      QuickSearchProductEventData eventData) async {
    const quickSearchDoc =
        r"""query FindFirstProducts($where: ProductsWhereInput) {
  findFirstProducts(where: $where) {
    picture
    product_id
    reference
    sellingPrice
    name
    family_id
    description
    buyingPrice
    family {
      name
    }
  }
} """;

    final where = graphql_service.Input$ProductsWhereUniqueInput(
        product_id: int.tryParse(eventData.searchValue)
    );

    final QueryOptions options = QueryOptions(
      document: gql(quickSearchDoc),
      variables: {"where": where},
    );

    final result = await graphQl.query(options);

    if (result.hasException) {
      return QuickSearchProductResponse(
        messageId: eventData.messageId,
        status: ServiceEventResponseStatus.error,
      );
    }

    final json = result.data!['findFirstProducts'];

    final Product product = productFromJson(json);

    return QuickSearchProductResponse(
        messageId: eventData.messageId, product: product);
  }

  @override
  Future<QuickSearchProductResponse> handleRawEvent(
      QuickSearchProductRawEventData eventData) {
    throw UnimplementedError();
  }
}

class QuickSearchProductResponse extends ServiceEventResponse {
  final Product? product;
  QuickSearchProductResponse(
      {required int messageId,
       this.product,
      ServiceEventResponseStatus status = ServiceEventResponseStatus.success})
      : super(messageId, status);
}

class QuickSearchProductRawEventData extends RawServiceEventData {
  QuickSearchProductRawEventData(
      {required int messageId, required String requesterId})
      : super(messageId, requesterId, QuickSearchProduct.eventId);
}

class QuickSearchProductEventData
    extends ServiceEventData<QuickSearchProductRawEventData> {
  final String searchValue;

  QuickSearchProductEventData(
      {required String requesterId, required this.searchValue})
      : super(requesterId);

  @override
  QuickSearchProductRawEventData toRawServiceEventData() {
    return QuickSearchProductRawEventData(
        messageId: messageId, requesterId: requesterId);
  }
}

class QuickSearchProductEvent extends ServiceEvent<QuickSearchProductResponse> {
  QuickSearchProductEvent({required super.eventData, super.callback})
      : super(QuickSearchProduct.eventId, QuickSearchProduct.eventName,
            QuickSearchProduct.serviceId);
}
