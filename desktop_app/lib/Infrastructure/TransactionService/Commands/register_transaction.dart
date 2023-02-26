import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/Domain/Models/transaction.dart';
import 'package:stock_manager/Infrastructure/TransactionService/api.dart';
import 'package:stock_manager/Infrastructure/services.dart';
import 'package:graphql/client.dart';
import 'package:stock_manager/Infrastructure/GraphQlService/service.dart'
    as graphql_service;

class RegisterTransaction extends Command<RegisterTransactionEventData,
    RegisterTransactionRawEventData, RegisterTransactionResponse> {
  static final eventId = TransactionApi.registerTransaction.index;
  static final eventName = TransactionApi.registerTransaction.name;
  static final serviceId = Services.transactionService.index;
  final GraphQLClient graphQl;

  RegisterTransaction(this.graphQl) : super(eventId, eventName);

  @override
  Future<RegisterTransactionResponse> handleEvent(
      RegisterTransactionEventData eventData) async {
    final transaction = eventData.transaction;

    final cityInput =
        graphql_service.Input$CityCreateNestedOneWithoutTransactionsInput(
            connect: graphql_service.Input$CityWhereUniqueInput(
                city_id: transaction.cityId));

    final sellerInput =
        graphql_service.Input$SellersCreateNestedOneWithoutTransactionsInput(
            connect: graphql_service.Input$SellersWhereUniqueInput(
                seller_id: transaction.sellerId));

    final transactionTypeInput = graphql_service
        .Input$TransactionTypesCreateNestedOneWithoutTransactionsInput(
            connect: graphql_service.Input$TransactionTypesWhereUniqueInput(
                transaction_type_id: transaction.payementTypeIndex));

    final payementsInput = _getPayementsInput(transaction.products.values);

    final input = graphql_service.Input$TransactionsCreateInput(
      transaction_id: transaction.timeStamp,
      transaction_type: transactionTypeInput,
      customer_name: transaction.customer,
      customer_phone: (transaction.phoneNumber ?? 0).toString(),
      quantity: transaction.totalQuantity,
      address: transaction.address ?? "",
      totalPayement: transaction.totalPrice,
      remainingPayement: transaction.remainingPayement,
      date: transaction.date.toIso8601String(),
      product_id: 0,
      Payements: payementsInput,
      seller: sellerInput,
      city: cityInput,
    );

    final mutationVariables =
        graphql_service.Variables$Mutation$CreateOneTransactions(data: input);

    final MutationOptions options =
        graphql_service.Options$Mutation$CreateOneTransactions(
            variables: mutationVariables);

    final result = await graphQl.mutate(options);

    if (result.hasException) {
      return RegisterTransactionResponse(
          messageId: eventData.messageId,
          status: ServiceEventResponseStatus.error);
    }

    return RegisterTransactionResponse(messageId: eventData.messageId);
  }

  @override
  Future<RegisterTransactionResponse> handleRawEvent(
      RegisterTransactionRawEventData eventData) {
    throw UnimplementedError();
  }

  graphql_service.Input$PayementsCreateNestedManyWithoutTransactionInput
      _getPayementsInput(Iterable<RecordProduct> products) {
    List<graphql_service.Input$PayementsCreateWithoutTransactionInput>
        payementsList = [];

    for (RecordProduct product in products) {
      graphql_service.Input$PayementsCreateWithoutTransactionInput
          productInput =
          graphql_service.Input$PayementsCreateWithoutTransactionInput(
        payement_id: int.tryParse(product.timeStamp) ?? 0,
        payement: product.sellingPrice,
      );

      payementsList.add(productInput);
    }

    final payements =
        graphql_service.Input$PayementsCreateNestedManyWithoutTransactionInput(
      create: payementsList,
    );

    return payements;
  }
}

class RegisterTransactionResponse extends ServiceEventResponse {
  RegisterTransactionResponse(
      {required int messageId,
      ServiceEventResponseStatus status = ServiceEventResponseStatus.success})
      : super(messageId, status);
}

class RegisterTransactionRawEventData extends RawServiceEventData {
  RegisterTransactionRawEventData(
      {required int messageId, required String requesterId})
      : super(messageId, requesterId, RegisterTransaction.eventId);
}

class RegisterTransactionEventData
    extends ServiceEventData<RegisterTransactionRawEventData> {
  final Record transaction;

  RegisterTransactionEventData(
      {required String requesterId,
      ServiceEventResponseStatus status = ServiceEventResponseStatus.success,
      required this.transaction})
      : super(requesterId);

  @override
  RegisterTransactionRawEventData toRawServiceEventData() {
    return RegisterTransactionRawEventData(
        messageId: messageId, requesterId: requesterId);
  }
}

class RegisterTransactionEvent
    extends ServiceEvent<RegisterTransactionResponse> {
  RegisterTransactionEvent({required super.eventData, super.callback})
      : super(RegisterTransaction.eventId, RegisterTransaction.eventName,
            RegisterTransaction.serviceId);
}
