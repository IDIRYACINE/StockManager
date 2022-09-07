import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Infrastructure/Database/database.dart';
import 'package:stock_manager/Infrastructure/Database/database_dao.dart';
import 'package:stock_manager/Infrastructure/serivces_store.dart';
import 'package:stock_manager/Types/special_enums.dart';

class DatabaseFrowarder {
  DatabaseFrowarder(this._database) {
    _databaseDao = DatabaseDAO(_database);
  }

  late DatabaseDAO _databaseDao;
  final Database _database;

  Future<ServiceResponse> updateProduct(
      ServiceMessageData serviceMessage) async {
    ServiceResponse response;

    _databaseDao.updateProduct(
      reference: serviceMessage.data[ServicesData.instance],
      updatedValues: serviceMessage.data[ServicesData.updatedValues],
    );

    response = ServiceResponse(
      hasData: false,
      messageId: serviceMessage.messageId,
      status: OperationStatus.success,
    );

    return response;
  }

  Future<ServiceResponse> deleteProduct(
      ServiceMessageData serviceMessage) async {
    ServiceResponse response;

    _databaseDao.deleteProduct(
      product: serviceMessage.data[ServicesData.instance],
    );

    response = ServiceResponse(
      hasData: false,
      messageId: serviceMessage.messageId,
      status: OperationStatus.success,
    );

    return response;
  }

  Future<ServiceResponse> searchProduct(
      ServiceMessageData serviceMessage) async {
    ServiceResponse response;

    List<Product> products = await _databaseDao.searchProduct(
      search: serviceMessage.data[ServicesData.databaseSelector],
    );

    response = ServiceResponse(
        hasData: true,
        messageId: serviceMessage.messageId,
        status: OperationStatus.success,
        data: products);

    return response;
  }

  Future<ServiceResponse> addProduct(ServiceMessageData serviceMessage) async {
    ServiceResponse response;

    _databaseDao.insertProduct(
      product: serviceMessage.data[ServicesData.instance],
    );

    response = ServiceResponse(
        hasData: false,
        messageId: serviceMessage.messageId,
        status: OperationStatus.success);

    return response;
  }

  Future<ServiceResponse> connect(ServiceMessageData serviceMessage) async {
    bool connected = await _database.connect(
        serviceMessage.data[ServicesData.identifier],
        serviceMessage.data[ServicesData.password]);

    ServiceResponse response = ServiceResponse(
        hasData: true,
        data: connected,
        status: OperationStatus.success,
        messageId: serviceMessage.messageId);

    return response;
  }

  Future<ServiceResponse> loadProducts(
      ServiceMessageData serviceMessage) async {
    List<Product> data = await _databaseDao.loadProducts();

    ServiceResponse response = ServiceResponse(
        hasData: true,
        status: OperationStatus.success,
        messageId: serviceMessage.messageId,
        data: data);

    return response;
  }

  Future<ServiceResponse> addProductFamily(ServiceMessageData message) async {
    await _databaseDao.insertProductFamily(
      productFamily: message.data[ServicesData.instance],
    );

    ServiceResponse response = ServiceResponse(
      hasData: false,
      messageId: message.messageId,
      status: OperationStatus.success,
    );

    return response;
  }

  Future<ServiceResponse> disconnect(ServiceMessageData message) async {
    _database.disconnect();

    ServiceResponse response = ServiceResponse(
      hasData: false,
      messageId: message.messageId,
      status: OperationStatus.success,
    );

    return response;
  }

  Future<ServiceResponse> updateProductFamily(
      ServiceMessageData message) async {
    await _databaseDao.updateProductFamily(
      productFamily: message.data[ServicesData.instance],
      updatedValues: message.data[ServicesData.databaseSelector],
    );

    ServiceResponse response = ServiceResponse(
      hasData: false,
      messageId: message.messageId,
      status: OperationStatus.success,
    );

    return response;
  }

  Future<ServiceResponse> searchProductFamily(
      ServiceMessageData message) async {
    List<ProductFamily> famillies = await _databaseDao.searchProductFamily(
      search: message.data[ServicesData.databaseSelector],
    );

    ServiceResponse response = ServiceResponse(
      hasData: true,
      data: famillies,
      messageId: message.messageId,
      status: OperationStatus.success,
    );

    return response;
  }

  Future<ServiceResponse> loadProductFamilies(
      ServiceMessageData message) async {
    List<ProductFamily> famillies = await _databaseDao.loadProductFamillies();

    ServiceResponse response = ServiceResponse(
      hasData: true,
      data: famillies,
      messageId: message.messageId,
      status: OperationStatus.success,
    );

    return response;
  }

  Future<ServiceResponse> loadPurchaseRecords(
      ServiceMessageData message) async {
    List<Record> records = await _databaseDao.loadPurchaseRecord();

    ServiceResponse response = ServiceResponse(
      hasData: true,
      data: records,
      messageId: message.messageId,
      status: OperationStatus.success,
    );

    return response;
  }

  Future<ServiceResponse> addPurchaseRecord(ServiceMessageData message) async {
    await _databaseDao.insertRecord(
      record: message.data[ServicesData.instance],
    );

    ServiceResponse response = ServiceResponse(
      hasData: false,
      messageId: message.messageId,
      status: OperationStatus.success,
    );

    return response;
  }

  Future<ServiceResponse> searchPurchaseRecord(
      ServiceMessageData message) async {

    List<Record> records = await _databaseDao.searchRecord(
      search: message.data[ServicesData.databaseSelector],
    );

    ServiceResponse response = ServiceResponse(
      hasData: true,
      data: records,
      messageId: message.messageId,
      status: OperationStatus.success,
    );

    return response;
  }

  Future<ServiceResponse> updatePurchaseRecord(
      ServiceMessageData message) async {
    await _databaseDao.updatePurchaseRecord(
      record: message.data[ServicesData.instance],
      updatedValues: message.data[ServicesData.databaseSelector],
    );

    ServiceResponse response = ServiceResponse(
      hasData: false,
      messageId: message.messageId,
      status: OperationStatus.success,
    );

    return response;
  }

  Future<ServiceResponse> deletePurchaseRecord(
      ServiceMessageData message) async {
    await _databaseDao.deletePurchaseRecord(
      record: message.data[ServicesData.instance],
    );

    ServiceResponse response = ServiceResponse(
      hasData: false,
      messageId: message.messageId,
      status: OperationStatus.success,
    );

    return response;
  }

  Future<ServiceResponse> addSeller(ServiceMessageData message) async {
    await _databaseDao.insertSeller(
      seller: message.data[ServicesData.instance],
    );

    ServiceResponse response = ServiceResponse(
      hasData: false,
      messageId: message.messageId,
      status: OperationStatus.success,
    );

    return response;
  }

  Future<ServiceResponse> loadSellers(ServiceMessageData message) async {
    List<Seller> sellers = await _databaseDao.loadSellers();

    ServiceResponse response = ServiceResponse(
      hasData: true,
      data: sellers,
      messageId: message.messageId,
      status: OperationStatus.success,
    );

    return response;
  }

  Future<ServiceResponse> deleteSeller(ServiceMessageData message) async {
    await _databaseDao.deleteSeller(
      seller: message.data[ServicesData.instance],
    );

    ServiceResponse response = ServiceResponse(
      hasData: false,
      messageId: message.messageId,
      status: OperationStatus.success,
    );

    return response;
  }

  Future<ServiceResponse> updateSeller(ServiceMessageData message) async {
    await _databaseDao.updateSeller(
      seller: message.data[ServicesData.instance],
      updatedValues: message.data[ServicesData.databaseSelector],
    );

    ServiceResponse response = ServiceResponse(
      hasData: false,
      messageId: message.messageId,
      status: OperationStatus.success,
    );

    return response;
  }

  Future<ServiceResponse> deleteProductFamily(
      ServiceMessageData message) async {
    await _databaseDao.deleteProductFamily(
      productFamily: message.data[ServicesData.instance],
    );

    ServiceResponse response = ServiceResponse(
      hasData: false,
      messageId: message.messageId,
      status: OperationStatus.success,
    );

    return response;
  }

  Future<ServiceResponse> addOrder(ServiceMessageData message) async {
    await _databaseDao.addOrder(
      order: message.data[ServicesData.instance],
    );

    ServiceResponse response = ServiceResponse(
      hasData: false,
      messageId: message.messageId,
      status: OperationStatus.success,
    );

    return response;
  }

  Future<ServiceResponse> loadOrders(ServiceMessageData message) async {
    List<Order> orders = await _databaseDao.searchOrders(search:{});

    ServiceResponse response = ServiceResponse(
      hasData: true,
      data: orders,
      messageId: message.messageId,
      status: OperationStatus.success,
    );

    return response;
  }

  Future<ServiceResponse> updateOrder(ServiceMessageData message) async {
    await _databaseDao.updateOrder(
      order: message.data[ServicesData.instance],
      updatedValues: message.data[ServicesData.databaseSelector],
    );

    ServiceResponse response = ServiceResponse(
      hasData: false,
      messageId: message.messageId,
      status: OperationStatus.success,
    );

    return response;
  }

  Future<ServiceResponse> deleteOrder(ServiceMessageData message) async {
    await _databaseDao.deleteOrder(
      order: message.data[ServicesData.instance],
    );

    ServiceResponse response = ServiceResponse(
      hasData: false,
      messageId: message.messageId,
      status: OperationStatus.success,
    );

    return response;
  }

  Future<ServiceResponse> searchOrders(ServiceMessageData message) async {
    List<Order> orders = await _databaseDao.searchOrders(
      search: message.data[ServicesData.databaseSelector],
    );

    ServiceResponse response = ServiceResponse(
      hasData: true,
      data: orders,
      messageId: message.messageId,
      status: OperationStatus.success,
    );

    return response;
  }

  Future<ServiceResponse> updateProductBatch(ServiceMessageData message) async{
    List<String> references = message.data[ServicesData.instanceList];

    for(int i=0 ; i<references.length;i++){
        await _databaseDao.updateProduct(
        reference: references[i],
        updatedValues: message.data[ServicesData.updatedValues],
    );
    }
    

    ServiceResponse response = ServiceResponse(
      hasData: false,
      messageId: message.messageId,
      status: OperationStatus.success,
    );

    return response;
  }
}
