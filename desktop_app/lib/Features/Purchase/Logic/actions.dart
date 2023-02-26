import 'package:stock_manager/Domain/Models/transaction.dart';
import 'package:stock_manager/Infrastructure/services_store.dart';
import 'package:stock_manager/Infrastructure/TransactionService/service.dart' as purchase_service; 


const _requesterId = 'PurchaseBloc';

Future<void> addPurchase(Record record) async {

  final event = purchase_service.RegisterTransactionEvent(
    eventData: purchase_service.RegisterTransactionEventData(
      transaction: record,
      requesterId: _requesterId,
    ),
  );

  ServicesGateway.instance().sendEvent(event);

}

