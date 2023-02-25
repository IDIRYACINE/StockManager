
import 'package:stock_manager/Domain/Models/transaction.dart';
import 'package:stock_manager/Infrastructure/services_store.dart';
import 'package:stock_manager/Infrastructure/DepositService/service.dart' as deposit_service;

const _requesterId = 'DepositBloc';

Future<void> addDeposit(Record record) async {
  final event = deposit_service.RegisterDepositEvent(
    eventData: deposit_service.RegisterDepositEventData(
      record: record,
      requesterId: _requesterId,
    ),
  );

  ServicesGateway.instance().sendEvent(event);
}


Future<void> quickSearchDeposit(String searchValue) async {
  final event = deposit_service.QuickSearchDepositEvent(
    eventData: deposit_service.QuickSearchDepositEventData(
      searchValue: searchValue,
      requesterId: _requesterId,
    ),
  );

  ServicesGateway.instance().sendEvent(event);
}
