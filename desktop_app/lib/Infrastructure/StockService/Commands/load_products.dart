import 'package:graphql/client.dart';
import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/Domain/Models/product.dart';
import 'package:stock_manager/Infrastructure/StockService/api.dart';
import 'package:stock_manager/Infrastructure/services.dart';

class LoadProducts extends Command<LoadProductsEventData,
    LoadProductsRawEventData, LoadProductsResponse> {
  static final eventId = StockApi.loadProducts.index;
  static final eventName = StockApi.loadProducts.name;
  static final serviceId = Services.stockService.index;

  final GraphQLClient graphQl;

  LoadProducts(this.graphQl) : super(eventId, eventName);

  @override
  Future<LoadProductsResponse> handleEvent(
      LoadProductsEventData eventData) async {
    const String readAllProducts = r"""
      query FindManySellers {
  findManySellers {
    picture
    seller_id
    seller_name
    seller_phone
  }
}query FindManyProducts {
  findManyProducts {
    buyingPrice
    description
    name
    picture
    product_id
    reference
    sellingPrice
    family_id
    ProductModel {
      size_id
      color_id
      quantity
      color {
        color
      }
      size {
        size
      }
    }
  }
}
    """;

    final QueryOptions options = QueryOptions(
      document: gql(readAllProducts),
    );

    final result = await graphQl.query(options);

    if (result.hasException) {
      return LoadProductsResponse(
          messageId: eventData.messageId,
          status: ServiceEventResponseStatus.error,
          products: []);
    }

    final json = result.data!['findManyProducts'] as List<dynamic>;

    final List<Product> products = productsFromJsonList(json);

    return LoadProductsResponse(
        messageId: eventData.messageId, products: products);
  }

  @override
  Future<LoadProductsResponse> handleRawEvent(
      LoadProductsRawEventData eventData) {
    throw UnimplementedError();
  }
}

class LoadProductsResponse extends ServiceEventResponse {
  final List<Product> products;
  LoadProductsResponse(
      {required int messageId,
      required this.products,
      ServiceEventResponseStatus status = ServiceEventResponseStatus.success})
      : super(messageId, status);
}

class LoadProductsRawEventData extends RawServiceEventData {
  LoadProductsRawEventData(
      {required int messageId, required String requesterId})
      : super(messageId, requesterId, LoadProducts.eventId);
}

class LoadProductsEventData extends ServiceEventData<LoadProductsRawEventData> {
  LoadProductsEventData(super.requesterId);

  @override
  LoadProductsRawEventData toRawServiceEventData() {
    return LoadProductsRawEventData(
        messageId: messageId, requesterId: requesterId);
  }
}

class LoadProductsEvent extends ServiceEvent<LoadProductsResponse> {
  LoadProductsEvent({required super.eventData, super.callback})
      : super(LoadProducts.eventId, LoadProducts.eventName,
            LoadProducts.serviceId);
}
