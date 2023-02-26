
import 'package:stock_manager/Domain/Models/transaction.dart';
import 'package:stock_manager/Infrastructure/services_store.dart';
import 'package:stock_manager/Infrastructure/TransactionService/service.dart' as deposit_service;

const _requesterId = 'DepositBloc';

Future<void> addDeposit(Record record) async {
  final event = deposit_service.RegisterTransactionEvent(
    eventData: deposit_service.RegisterTransactionEventData(
      transaction: record,
      requesterId: _requesterId,
    ),
  );

  ServicesGateway.instance().sendEvent(event);
}


Future<void> quickSearchDeposit(String searchValue) async {
  final event = deposit_service.QuickSearchTransactionsEvent(
    eventData: deposit_service.QuickSearchTransactionsEventData(
      searchValue: searchValue,
      requesterId: _requesterId,
    ),
  );

  ServicesGateway.instance().sendEvent(event);
}
