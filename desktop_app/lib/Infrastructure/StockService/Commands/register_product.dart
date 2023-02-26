import 'package:graphql/client.dart';
import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/Domain/Models/product.dart';
import 'package:stock_manager/Infrastructure/StockService/api.dart';
import 'package:stock_manager/Infrastructure/services.dart';
import 'package:stock_manager/Infrastructure/GraphQlService/service.dart'
    as graphql_service;

class RegisterProduct extends Command<RegisterProductEventData,
    RegisterProductRawEventData, RegisterProductResponse> {
  static final eventId = StockApi.registerProduct.index;
  static final eventName = StockApi.registerProduct.name;
  static final serviceId = Services.stockService.index;

  final GraphQLClient graphQl;
  RegisterProduct(this.graphQl) : super(eventId, eventName);

  @override
  Future<RegisterProductResponse> handleEvent(
      RegisterProductEventData eventData) async {
    final familyInput =
        graphql_service.Input$ProductFamilyCreateNestedOneWithoutProductsInput(
      create: graphql_service.Input$ProductFamilyCreateWithoutProductsInput(
          name: eventData.product.productFamily),
    );

    final input = graphql_service.Input$ProductsCreateInput(
      name: eventData.product.name,
      description: "",
      sellingPrice: eventData.product.sellingPrice,
      buyingPrice: eventData.product.buyingPrice,
      reference: eventData.product.barcode,
      picture: eventData.product.imageUrl ?? "",
      family: familyInput,
    );

    final mutationVariables =
        graphql_service.Variables$Mutation$CreateOneProducts(data: input);

    final options = graphql_service.Options$Mutation$CreateOneProducts(
        variables: mutationVariables);

    final result = await graphQl.mutate(options);

    if (result.hasException) {
      return RegisterProductResponse(
        messageId: eventData.messageId,
        status: ServiceEventResponseStatus.error,
      );
    }

    return RegisterProductResponse(messageId: eventData.messageId);
  }

  @override
  Future<RegisterProductResponse> handleRawEvent(
      RegisterProductRawEventData eventData) {
    throw UnimplementedError();
  }
}

class RegisterProductResponse extends ServiceEventResponse {
  RegisterProductResponse(
      {required int messageId,
      ServiceEventResponseStatus status = ServiceEventResponseStatus.success})
      : super(messageId, status);
}

class RegisterProductRawEventData extends RawServiceEventData {
  RegisterProductRawEventData(
      {required int messageId, required String requesterId})
      : super(messageId, requesterId, RegisterProduct.eventId);
}

class RegisterProductEventData
    extends ServiceEventData<RegisterProductRawEventData> {
  final Product product;
  RegisterProductEventData({required String requesterId, required this.product})
      : super(requesterId);

  @override
  RegisterProductRawEventData toRawServiceEventData() {
    return RegisterProductRawEventData(
        messageId: messageId, requesterId: requesterId);
  }
}

class RegisterProductEvent extends ServiceEvent<RegisterProductResponse> {
  RegisterProductEvent({required super.eventData, super.callback})
      : super(RegisterProduct.eventId, RegisterProduct.eventName,
            RegisterProduct.serviceId);
}
