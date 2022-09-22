import 'package:stock_manager/DataModels/LiveDataModels/records.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Infrastructure/serivces_store.dart';
import 'package:stock_manager/Types/i_delegates.dart';
import 'package:stock_manager/Types/special_enums.dart';

class RecordsStoreHandler implements RecordsStoreDelegate {
  RecordsStoreHandler(this.recordsLiveModel);

  final RecordsLiveDataModel recordsLiveModel;

  @override
  Future<void> searchRecords(Object? data) async {
    Map<ServicesData, dynamic> requestData = {ServicesData.databaseSelector: (data == null)? {} : data};


    ServiceMessage<List<Record>> message = ServiceMessage(
        service: AppServices.database,
        event: DatabaseEvent.searchPurchaseRecord,
        data: requestData,
        hasCallback: true,
        callback: (records) => recordsLiveModel.setAllRecords(records));

    ServicesStore.instance.sendMessage(message);
  }
}
