import 'package:graphql/client.dart';
import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/Domain/Models/transaction.dart';
import 'package:stock_manager/Infrastructure/PurchaseService/api.dart';
import 'package:stock_manager/Infrastructure/services.dart';
import 'package:stock_manager/Infrastructure/GraphQlService/service.dart'
    as graphql_service;

class RegisterPurchase extends Command<RegisterPurchaseEventData,
    RegisterPurchaseRawEventData, RegisterPurchaseResponse> {
  static final eventId = PurchaseApi.registerPurchase.index;
  static final eventName = PurchaseApi.registerPurchase.name;
  static final serviceId = Services.purchaseService.index;

  final GraphQLClient graphQl;

  RegisterPurchase(this.graphQl) : super(eventId, eventName);

  @override
  Future<RegisterPurchaseResponse> handleEvent(
      RegisterPurchaseEventData eventData) async {
    const mutationDoc =
        r"""mutation CreateOneTransactions($data: TransactionsCreateInput!) {
  createOneTransactions(data: $data) {
    address
    city_id
    customer_name
    customer_phone
    date
    product_id
    quantity
    remainingPayement
    seller_id
    status_id
    totalPayement
    transaction_id
    transaction_type_id
  }
}""";

    final record = eventData.record;

    // required int transaction_id,
    // required int product_id,
    // required String customer_name,
    // required String customer_phone,
    // required String address,
    // required int quantity,
    // required String date,
    // required double remainingPayement,
    // required double totalPayement,
    // required Input$SellersCreateNestedOneWithoutTransactionsInput seller,
    // required Input$CityCreateNestedOneWithoutTransactionsInput city,
    // required Input$TransactionTypesCreateNestedOneWithoutTransactionsInput
    //     transaction_type,
    // Input$TransactionStatusCreateNestedOneWithoutTransactionsInput? status,
    // Input$PayementsCreateNestedManyWithoutTransactionInput? Payements,

    final seller =
        graphql_service.Input$SellersCreateNestedOneWithoutTransactionsInput(
      connect: graphql_service.Input$SellersWhereUniqueInput(
        seller_id: record.sellerId,
      ),
    );

    final city =
        graphql_service.Input$CityCreateNestedOneWithoutTransactionsInput(
      connect: graphql_service.Input$CityWhereUniqueInput(
        city_id: record.cityId,
      ),
    );

    final transactionType = graphql_service
        .Input$TransactionTypesCreateNestedOneWithoutTransactionsInput(
      connect: graphql_service.Input$TransactionTypesWhereUniqueInput(
        transaction_type_id: record.payementTypeIndex,
      ),
    );

    final input = graphql_service.Input$TransactionsCreateInput(
      transaction_id: record.timeStamp,
      product_id: 0,
      customer_name: record.customer,
      customer_phone: record.phoneNumber.toString(),
      address: record.address ?? "",
      quantity: record.totalQuantity,
      date: record.date.toIso8601String(),
      remainingPayement: record.remainingPayement,
      totalPayement: record.totalDeposit,
      seller: seller,
      city: city,
      transaction_type: transactionType,
    );

    final MutationOptions options = MutationOptions(
      document: gql(mutationDoc),
      variables: {"data": input},
    );

    final result = await graphQl.mutate(options);

    if (result.hasException) {
      return RegisterPurchaseResponse(
          messageId: eventData.messageId,
          status: ServiceEventResponseStatus.error);
    }

    return RegisterPurchaseResponse(messageId: eventData.messageId);
  }

  @override
  Future<RegisterPurchaseResponse> handleRawEvent(
      RegisterPurchaseRawEventData eventData) {
    throw UnimplementedError();
  }
}

class RegisterPurchaseResponse extends ServiceEventResponse {
  RegisterPurchaseResponse(
      {required int messageId,
      ServiceEventResponseStatus status = ServiceEventResponseStatus.success})
      : super(messageId, status);
}

class RegisterPurchaseRawEventData extends RawServiceEventData {
  RegisterPurchaseRawEventData(
      {required int messageId, required String requesterId})
      : super(messageId, requesterId, RegisterPurchase.eventId);
}

class RegisterPurchaseEventData
    extends ServiceEventData<RegisterPurchaseRawEventData> {
  final Record record;
  RegisterPurchaseEventData({required String requesterId, required this.record})
      : super(requesterId);

  @override
  RegisterPurchaseRawEventData toRawServiceEventData() {
    return RegisterPurchaseRawEventData(
        messageId: messageId, requesterId: requesterId);
  }
}

class RegisterPurchaseEvent extends ServiceEvent<RegisterPurchaseResponse> {
  RegisterPurchaseEvent({required super.eventData, super.callback})
      : super(RegisterPurchase.eventId, RegisterPurchase.eventName,
            RegisterPurchase.serviceId);
}
