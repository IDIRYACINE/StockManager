import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/Infrastructure/TransactionService/api.dart';
import 'package:stock_manager/Infrastructure/services.dart';
import 'package:graphql/client.dart';
import 'package:stock_manager/Infrastructure/GraphQlService/service.dart'
    as graphql_service;

class SearchTransaction extends Command<SearchTransactionEventData,
    SearchTransactionRawEventData, SearchTransactionResponse> {
  static final eventId = TransactionApi.searchTransaction.index;
  static final eventName = TransactionApi.searchTransaction.name;
  static final serviceId = Services.transactionService.index;

  final GraphQLClient graphQl;

  SearchTransaction(this.graphQl) : super(eventId, eventName);

  @override
  Future<SearchTransactionResponse> handleEvent(
      SearchTransactionEventData eventData) async {
    throw UnimplementedError();
  }

  @override
  Future<SearchTransactionResponse> handleRawEvent(
      SearchTransactionRawEventData eventData) {
    throw UnimplementedError();
  }
}

class SearchTransactionResponse extends ServiceEventResponse {
  SearchTransactionResponse(super.messageId, super.responseType);
}

class SearchTransactionRawEventData extends RawServiceEventData {
  SearchTransactionRawEventData(
      {required int messageId, required String requesterId})
      : super(messageId, requesterId, SearchTransaction.eventId);
}

class SearchTransactionEventData
    extends ServiceEventData<SearchTransactionRawEventData> {
  SearchTransactionEventData(super.requesterId);

  @override
  SearchTransactionRawEventData toRawServiceEventData() {
    return SearchTransactionRawEventData(
        messageId: messageId, requesterId: requesterId);
  }
}

class SearchTransactionEvent extends ServiceEvent<SearchTransactionResponse> {
  SearchTransactionEvent({required super.eventData, super.callback})
      : super(SearchTransaction.eventId, SearchTransaction.eventName,
            SearchTransaction.serviceId);
}
