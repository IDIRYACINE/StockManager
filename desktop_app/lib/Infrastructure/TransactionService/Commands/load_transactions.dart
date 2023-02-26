import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/Domain/Models/transaction.dart';
import 'package:stock_manager/Infrastructure/TransactionService/api.dart';
import 'package:stock_manager/Infrastructure/services.dart';
import 'package:graphql/client.dart';
import 'package:stock_manager/Infrastructure/GraphQlService/service.dart'
    as graphql_service;

class LoadTransactions extends Command<LoadTransactionsEventData,
    LoadTransactionsRawEventData, LoadTransactionsResponse> {
  static final eventId = TransactionApi.loadTransactions.index;
  static final eventName = TransactionApi.loadTransactions.name;
  static final serviceId = Services.transactionService.index;
  final GraphQLClient graphQl;

  LoadTransactions(this.graphQl) : super(eventId, eventName);

  @override
  Future<LoadTransactionsResponse> handleEvent(
      LoadTransactionsEventData eventData) async{
    

    final QueryOptions options = graphql_service.Options$Query$FindManyTransactions();

    final result = await graphQl.query(options);

    if (result.hasException) {
      return LoadTransactionsResponse(
          messageId: eventData.messageId,
          status: ServiceEventResponseStatus.error,
          transactions: []);
    }

    final json = result.data!['findManyTransactionss'] as List<dynamic>;

    final List<Record> transactions = recordsFromJsonList(json);

    return LoadTransactionsResponse(
        messageId: eventData.messageId, transactions: transactions);
  }

  @override
  Future<LoadTransactionsResponse> handleRawEvent(
      LoadTransactionsRawEventData eventData) {
    throw UnimplementedError();
  }
}

class LoadTransactionsResponse extends ServiceEventResponse {
  final List<Record> transactions;
  LoadTransactionsResponse(
      {
        required this.transactions,
        required int messageId, ServiceEventResponseStatus status = ServiceEventResponseStatus.success})
      : super(messageId, status);
}

class LoadTransactionsRawEventData extends RawServiceEventData {
  LoadTransactionsRawEventData(
      {required int messageId, required String requesterId})
      : super(messageId, requesterId, LoadTransactions.eventId);
}

class LoadTransactionsEventData
    extends ServiceEventData<LoadTransactionsRawEventData> {
  LoadTransactionsEventData(super.requesterId);

  @override
  LoadTransactionsRawEventData toRawServiceEventData() {
    return LoadTransactionsRawEventData(
        messageId: messageId, requesterId: requesterId);
  }
}

class LoadTransactionsEvent extends ServiceEvent<LoadTransactionsResponse> {
  LoadTransactionsEvent({required super.eventData, super.callback})
      : super(LoadTransactions.eventId, LoadTransactions.eventName,
            LoadTransactions.serviceId);
}
