import 'package:mongo_dart/mongo_dart.dart';
import 'package:stock_manager/DataModels/LiveDataModels/stock.dart';
import 'package:stock_manager/Infrastructure/serivces_store.dart';
import 'package:stock_manager/Types/i_database.dart';
import 'package:stock_manager/Types/special_enums.dart';

abstract class StockUtility {

  static void claimStockQuantity(
      String reference, int quantity, StockLiveDataModel stockLiveDataModel) {

    ModifierBuilder modifier =
        ModifierBuilder().inc(RecordFields.quantity.name, quantity);

    stockLiveDataModel.reclaimStock(reference, quantity);

    Map<ServicesData, dynamic> data = {
      ServicesData.instance: reference,
      ServicesData.updatedValues: modifier.map,
    };

    ServiceMessage message = ServiceMessage(
        data: data,
        event: DatabaseEvent.updateProduct,
        service: AppServices.database);
    ServicesStore.instance.sendMessage(message);
  }

  static void claimStockQuantityBatch(
      List<String> references, int quantity, StockLiveDataModel stockLiveDataModel) {

    ModifierBuilder modifier =
        ModifierBuilder().inc(RecordFields.quantity.name, quantity);

    for(int i = 0 ; i <references.length;i++){
      stockLiveDataModel.reclaimStock(references[i], quantity);
    }

    Map<ServicesData, dynamic> data = {
      ServicesData.instanceList: references,
      ServicesData.updatedValues: modifier.map,
    };

    ServiceMessage message = ServiceMessage(
        data: data,
        event: DatabaseEvent.updateProductBatch,
        service: AppServices.database);
    ServicesStore.instance.sendMessage(message);
  }
}
