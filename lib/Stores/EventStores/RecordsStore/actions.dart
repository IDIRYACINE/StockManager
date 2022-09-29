
import 'package:stock_manager/DataModels/LiveDataModels/records.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Infrastructure/serivces_store.dart';
import 'package:stock_manager/Types/events_keys_enum.dart';
import 'package:stock_manager/Types/i_delegates.dart';
import 'package:stock_manager/Types/i_stores.dart';
import 'package:stock_manager/Types/special_enums.dart';

class SearchRecords implements StoreAction{
  final RecordsLiveDataModel recordsLiveModel;

  SearchRecords(this.recordsLiveModel);

  @override
  Future<EventResponse?> execute(StoreEvent event)  async {

    Map<ServicesData, dynamic> requestData = {ServicesData.databaseSelector: (event.data == null)? {} : event.data};


    ServiceMessage<List<Record>> message = ServiceMessage(
        service: AppServices.database,
        event: DatabaseEvent.searchPurchaseRecord,
        data: requestData,
        hasCallback: true,
        callback: (records) => recordsLiveModel.setAllRecords(records));

    ServicesStore.instance.sendMessage(message);
    
    return null;
  }

  @override
  int getId() {
   return RecordEvents.searchRecords.index;
  }

  @override
  String getName() {
    return RecordEvents.searchRecords.name;
  }
}