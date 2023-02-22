import 'package:mongo_dart/mongo_dart.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Types/i_database.dart';
import 'package:stock_manager/DataModels/special_enums.dart';

void loadProductDetaills(String searchValue, OnEditorSearchResulCallback callback) {
  Map<ServicesData, dynamic> data = {
    ServicesData.databaseSelector:
        SelectorBuilder().eq(ProductFields.reference.name, searchValue).map
  };

  ServiceMessage message = ServiceMessage<List<Product>>(
      callback: callback,
      hasCallback: true,
      data: data,
      event: DatabaseEvent.searchProduct,
      service: AppServices.database);

  ServicesStore.instance.sendMessage(message);
}
