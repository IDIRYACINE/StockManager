
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Infrastructure/Database/database.dart';
import 'package:stock_manager/Infrastructure/Database/repository.dart';
import 'package:stock_manager/Infrastructure/serivces_store.dart';
import 'package:stock_manager/Types/special_enums.dart';

class DatabaseFrowarder{

  DatabaseFrowarder( this._database){
    _repository = DatabaseRepository(_database);
  }

  late DatabaseRepository _repository ;
  final Database _database;

  Future<ServiceResponse> updateProduct(ServiceMessageData serviceMessage) async{
    ServiceResponse response;

    _repository.updateProduct(
       product : serviceMessage.data[ServicesData.instance],
       updatedValues: serviceMessage.data[ServicesData.databaseSelector],
    );

    response = ServiceResponse(
        hasData: false,
        messageId: serviceMessage.messageId,
        status: OperationStatus.success,
        );

    return response;
  }

  Future<ServiceResponse> deleteProduct(ServiceMessageData serviceMessage) async{
    ServiceResponse response;

    _repository.deleteProduct(
       product : serviceMessage.data[ServicesData.instance],
    );

    response = ServiceResponse(
        hasData: false,
        messageId: serviceMessage.messageId,
        status: OperationStatus.success,
        );

    return response;
  }

  Future<ServiceResponse> searchProduct(ServiceMessageData serviceMessage) async{
    ServiceResponse response;

    List<Product> products = await _repository.searchProduct(
       search : serviceMessage.data[ServicesData.databaseSelector],
    );

    response = ServiceResponse(
        hasData: true,
        messageId: serviceMessage.messageId,
        status: OperationStatus.success,
        data: products
        );

    return response;
  }

  Future<ServiceResponse> addProduct(ServiceMessageData serviceMessage) async{
    ServiceResponse response;

    _repository.insertProduct(
      product : serviceMessage.data[ServicesData.instance],
    );

    response = ServiceResponse(
        hasData: false,
        messageId: serviceMessage.messageId,
        status: OperationStatus.success);

    return response;
  }

  Future<ServiceResponse> connect(ServiceMessageData serviceMessage) async{

    bool connected = await _database.connect(serviceMessage.data[ServicesData.identifier],
        serviceMessage.data[ServicesData.password]);

    ServiceResponse response = ServiceResponse(
        hasData: true,
        data: connected,
        status: OperationStatus.success,
        messageId: serviceMessage.messageId);

    return response;
  }

  Future<ServiceResponse> loadProducts(ServiceMessageData serviceMessage) async{
    List<Product> data = await _repository.loadProducts();

    ServiceResponse response = ServiceResponse(
        hasData: true,
        status: OperationStatus.success,
        messageId: serviceMessage.messageId,
        data: data 
        );

    return response;
  }

  Future<ServiceResponse> addProductFamily(ServiceMessageData message) async{

    await _repository.insertProductFamily(
       productFamily : message.data[ServicesData.instance],
    );

    ServiceResponse response = ServiceResponse(
        hasData: false,
        messageId: message.messageId,
        status: OperationStatus.success,
        );

    return response;
  }

  Future<ServiceResponse> disconnect(ServiceMessageData message)  async{

     _database.disconnect();

    ServiceResponse response = ServiceResponse(
        hasData: false,
        messageId: message.messageId,
        status: OperationStatus.success,
        );

    return response;
  }

  Future<ServiceResponse> updateProductFamily(ServiceMessageData message)  async{

    await _repository.updateProductFamily(
       productFamily : message.data[ServicesData.instance],
        updatedValues: message.data[ServicesData.databaseSelector],
    );

    ServiceResponse response = ServiceResponse(
        hasData: false,
        messageId: message.messageId,
        status: OperationStatus.success,
        );

    return response;
  }

  Future<ServiceResponse> searchProductFamily(ServiceMessageData message) async{

    await _repository.searchProductFamily(
       search : message.data[ServicesData.databaseSelector],
    );

    ServiceResponse response = ServiceResponse(
        hasData: false,
        messageId: message.messageId,
        status: OperationStatus.success,
        );

    return response;
  }
  Future<ServiceResponse> loadProductFamilies(ServiceMessageData message)  async{

    List<ProductFamily> famillies = await _repository.loadProductFamillies(
      
    );

    ServiceResponse response = ServiceResponse(
        hasData: true,
        data: famillies,
        messageId: message.messageId,
        status: OperationStatus.success,
        );

    return response;
  }
  Future<ServiceResponse> loadPurchaseRecords(ServiceMessageData message)  async{

    List<Record> records= await _repository.loadPurchaseRecord(
       
    );

    ServiceResponse response = ServiceResponse(
        hasData: true,
        data: records,
        messageId: message.messageId,
        status: OperationStatus.success,
        );

    return response;
  }

  Future<ServiceResponse> addPurchaseRecord(ServiceMessageData message)  async{

    await _repository.insertRecord(
       record : message.data[ServicesData.instance],
    );

    ServiceResponse response = ServiceResponse(
        hasData: false,
        messageId: message.messageId,
        status: OperationStatus.success,
        );

    return response;
  }

  Future<ServiceResponse> searchPurchaseRecord(ServiceMessageData message)  async{

    await _repository.searchRecord(
       search : message.data[ServicesData.databaseSelector],
    );

    ServiceResponse response = ServiceResponse(
        hasData: false,
        messageId: message.messageId,
        status: OperationStatus.success,
        );

    return response;
  }

  Future<ServiceResponse> updatePurchaseRecord(ServiceMessageData message)  async{

    await _repository.updatePurchaseRecord(
       record : message.data[ServicesData.instance],
        updatedValues: message.data[ServicesData.databaseSelector],
    );

    ServiceResponse response = ServiceResponse(
        hasData: false,
        messageId: message.messageId,
        status: OperationStatus.success,
        );

    return response;
  }

  Future<ServiceResponse> deletePurchaseRecord(ServiceMessageData message) async{

    await _repository.deletePurchaseRecord(
       record : message.data[ServicesData.instance],
    );

    ServiceResponse response = ServiceResponse(
        hasData: false,
        messageId: message.messageId,
        status: OperationStatus.success,
        );

    return response;
  }

  Future<ServiceResponse> addSeller(ServiceMessageData message)  async{

    await _repository.insertSeller(
       seller : message.data[ServicesData.instance],
    );

    ServiceResponse response = ServiceResponse(
        hasData: false,
        messageId: message.messageId,
        status: OperationStatus.success,
        );

    return response;
  }
  Future<ServiceResponse> loadSellers(ServiceMessageData message) async{

    List<Seller> sellers = await _repository.loadSellers();

    ServiceResponse response = ServiceResponse(
        hasData: true,
        data: sellers,
        messageId: message.messageId,
        status: OperationStatus.success,
        );

    return response;
  }

  Future<ServiceResponse> deleteSeller(ServiceMessageData message)  async{

    await _repository.deleteSeller(
       seller : message.data[ServicesData.instance],
    );

    ServiceResponse response = ServiceResponse(
        hasData: false,
        messageId: message.messageId,
        status: OperationStatus.success,
        );

    return response;
  }

  Future<ServiceResponse> updateSeller(ServiceMessageData message)  async{

    await _repository.updateSeller(
       seller : message.data[ServicesData.instance],
       updatedValues: message.data[ServicesData.databaseSelector],
    );

    ServiceResponse response = ServiceResponse(
        hasData: false,
        messageId: message.messageId,
        status: OperationStatus.success,
        );

    return response;
  }

  Future<ServiceResponse> deleteProductFamily(ServiceMessageData message)  async{

    await _repository.deleteProductFamily(
       productFamily : message.data[ServicesData.instance],
    );

    ServiceResponse response = ServiceResponse(
        hasData: false,
        messageId: message.messageId,
        status: OperationStatus.success,
        );

    return response;
  }
}