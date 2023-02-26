import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/Domain/Models/transaction.dart';
import 'package:stock_manager/Infrastructure/TransactionService/api.dart';
import 'package:stock_manager/Infrastructure/services.dart';
import 'package:graphql/client.dart';
import 'package:stock_manager/Infrastructure/GraphQlService/service.dart'
    as graphql_service;

class QuickSearchTransactions extends Command<QuickSearchTransactionsEventData,
    QuickSearchTransactionsRawEventData, QuickSearchTransactionsResponse> {
  static final eventId = TransactionApi.quickSearch.index;
  static final eventName = TransactionApi.quickSearch.name;
  static final serviceId = Services.transactionService.index;
  final GraphQLClient graphQl;

  QuickSearchTransactions(this.graphQl) : super(eventId, eventName);

  @override
  Future<QuickSearchTransactionsResponse> handleEvent(
      QuickSearchTransactionsEventData eventData) async {
    final where = graphql_service.Input$TransactionsWhereInput(
      product_id: graphql_service.Input$IntFilter(
        equals: int.tryParse(eventData.searchValue),
      ),
    );

    final mutationVariables =
        graphql_service.Variables$Query$FindFirstTransactions(
      where: where,
    );

    final QueryOptions options =
        graphql_service.Options$Query$FindFirstTransactions(
            variables: mutationVariables);

    final result = await graphQl.query(options);

    if (result.hasException) {
      return QuickSearchTransactionsResponse(
        messageId: eventData.messageId,
        status: ServiceEventResponseStatus.error,
      );
    }

    final json = result.data!['findFirstProducts'];

    final Record transaction = recordFromJson(json);

    return QuickSearchTransactionsResponse(
        messageId: eventData.messageId, transaction: transaction);
  }

  @override
  Future<QuickSearchTransactionsResponse> handleRawEvent(
      QuickSearchTransactionsRawEventData eventData) {
    throw UnimplementedError();
  }
}

class QuickSearchTransactionsResponse extends ServiceEventResponse {
  final Record? transaction;

  QuickSearchTransactionsResponse(
      {required int messageId,
      ServiceEventResponseStatus status = ServiceEventResponseStatus.success,
      this.transaction})
      : super(messageId, status);
}

class QuickSearchTransactionsRawEventData extends RawServiceEventData {
  QuickSearchTransactionsRawEventData(
      {required int messageId, required String requesterId})
      : super(messageId, requesterId, QuickSearchTransactions.eventId);
}

class QuickSearchTransactionsEventData
    extends ServiceEventData<QuickSearchTransactionsRawEventData> {
  final String searchValue;
  QuickSearchTransactionsEventData(
      {required String requesterId, required this.searchValue})
      : super(requesterId);

  @override
  QuickSearchTransactionsRawEventData toRawServiceEventData() {
    return QuickSearchTransactionsRawEventData(
        messageId: messageId, requesterId: requesterId);
  }
}

class QuickSearchTransactionsEvent
    extends ServiceEvent<QuickSearchTransactionsResponse> {
  QuickSearchTransactionsEvent({required super.eventData, super.callback})
      : super(
            QuickSearchTransactions.eventId,
            QuickSearchTransactions.eventName,
            QuickSearchTransactions.serviceId);
}
