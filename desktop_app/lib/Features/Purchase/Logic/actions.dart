import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Infrastructure/services_store.dart';
import 'package:stock_manager/Infrastructure/PurchaseService/service.dart' as purchase_service; 


const _requesterId = 'PurchaseBloc';

Future<void> addPurchase(Record record) async {

  final event = purchase_service.RegisterPurchaseEvent(
    eventData: purchase_service.RegisterPurchaseEventData(
      record: record,
      requesterId: _requesterId,
    ),
  );

  ServicesGateway.instance().sendEvent(event);

}

