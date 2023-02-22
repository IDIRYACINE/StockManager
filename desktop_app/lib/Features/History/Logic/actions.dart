

  import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/special_enums.dart';

@override
  Future<void> searchRecords(Map<ServicesData, dynamic> requestData)  async {



    ServiceMessage<List<Record>> message = ServiceMessage(
        service: AppServices.database,
        event: DatabaseEvent.searchPurchaseRecord,
        data: requestData,
        hasCallback: true,
        callback: (records) => {});//todo:

    ServicesStore.instance.sendMessage(message);
    
}