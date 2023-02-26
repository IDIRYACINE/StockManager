import 'package:graphql/client.dart';
import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/Infrastructure/StockService/api.dart';
import 'package:stock_manager/Infrastructure/services.dart';
import 'package:stock_manager/Infrastructure/GraphQlService/service.dart'
    as graphql_service;

class AddProductModel extends Command<AddProductModelEventData,
    AddProductModelRawEventData, AddProductModelResponse> {
  static final eventId = StockApi.addProductModel.index;
  static final eventName = StockApi.addProductModel.name;
  static final serviceId = Services.stockService.index;

  final GraphQLClient graphQl;
  AddProductModel(this.graphQl) : super(eventId, eventName);

  @override
  Future<AddProductModelResponse> handleEvent(
      AddProductModelEventData eventData) async {
    final sizeInput =
        graphql_service.Input$SizesCreateNestedOneWithoutProductModelInput(
      create: graphql_service.Input$SizesCreateWithoutProductModelInput(
        size: eventData.size,
        id: eventData.sizeId,
      ),
    );

    final colorInput =
        graphql_service.Input$ColorsCreateNestedOneWithoutProductModelInput(
      create: graphql_service.Input$ColorsCreateWithoutProductModelInput(
        color: eventData.color,
        id: eventData.colorId,
      ),
    );

    final productInput =
        graphql_service.Input$ProductsCreateNestedOneWithoutProductModelInput(
      connect: graphql_service.Input$ProductsWhereUniqueInput(
          product_id: eventData.productId),
    );

    final input = graphql_service.Input$ProductModelCreateInput(
      quantity: eventData.quantity,
      size: sizeInput,
      color: colorInput,
      product: productInput,
    );

    final mutationVariables =
        graphql_service.Variables$Mutation$CreateOneProductModel(data: input);

    final options = graphql_service.Options$Mutation$CreateOneProductModel(
        variables: mutationVariables);

    final result = await graphQl.mutate(options);

    if (result.hasException) {
      return AddProductModelResponse(
        messageId: eventData.messageId,
        status: ServiceEventResponseStatus.error,
      );
    }

    return AddProductModelResponse(messageId: eventData.messageId);
  }

  @override
  Future<AddProductModelResponse> handleRawEvent(
      AddProductModelRawEventData eventData) {
    throw UnimplementedError();
  }
}

class AddProductModelResponse extends ServiceEventResponse {
  AddProductModelResponse(
      {required int messageId,
      ServiceEventResponseStatus status = ServiceEventResponseStatus.success})
      : super(messageId, status);
}

class AddProductModelRawEventData extends RawServiceEventData {
  AddProductModelRawEventData(
      {required int messageId, required String requesterId})
      : super(messageId, requesterId, AddProductModel.eventId);
}

class AddProductModelEventData
    extends ServiceEventData<AddProductModelRawEventData> {
  final int quantity;
  final String size;
  final String color;
  final int sizeId;
  final int productId;
  final int colorId;

  AddProductModelEventData(
      {required String requesterId,
      required this.quantity,
      required this.size,
      required this.sizeId,
      required this.productId,
      required this.colorId,
      required this.color})
      : super(requesterId);

  @override
  AddProductModelRawEventData toRawServiceEventData() {
    return AddProductModelRawEventData(
        messageId: messageId, requesterId: requesterId);
  }
}

class AddProductModelEvent extends ServiceEvent<AddProductModelResponse> {
  AddProductModelEvent({required super.eventData, super.callback})
      : super(AddProductModel.eventId, AddProductModel.eventName,
            AddProductModel.serviceId);
}
