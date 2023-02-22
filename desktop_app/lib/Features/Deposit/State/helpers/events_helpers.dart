import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Infrastructure/StockService/service.dart' as stock_service;
import 'package:stock_manager/Infrastructure/services_store.dart';


const _requesterId = 'DepositBloc';

void loadProductDetaills(String searchValue, OnEditorSearchResulCallback callback) {
  
  final data = stock_service.QuickSearchProductEventData(searchValue: searchValue,requesterId:_requesterId);

  final event = stock_service.QuickSearchProductEvent(
    eventData: data,
  );

  ServicesGateway.instance().sendEvent(event);
}
