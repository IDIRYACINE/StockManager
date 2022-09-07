
import 'package:flutter_test/flutter_test.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/DataModels/type_defs.dart';
import 'package:stock_manager/Infrastructure/Database/database.dart';
import 'package:stock_manager/Infrastructure/Database/database_dao.dart';
import 'package:stock_manager/Infrastructure/Database/repository.dart';

void main() {
  const String username = 'Imad' , password = '123';
   test("test product insertion", () async {

    Database database = Database();
    await database.connect(username, password);
    DatabaseDAO dao = DatabaseDAO(database);

    Product product = Product.defaultInstance();
    AppJson<dynamic> json = DatabaseRepository.productToJson(product: product);

    dao.insertProduct(product: product);


    expect('', json );

  });


  test("test product loading", () async {

    Database database = Database();
    await database.connect(username, password);
    DatabaseDAO repository = DatabaseDAO(database);
    List<Product> records = await repository.loadProducts();

    expect(true, records.isNotEmpty );

  });

  
  test("test record loading", () async {

    Database database = Database();
    await database.connect(username, password);
    DatabaseDAO repository = DatabaseDAO(database);
    List<Record> records = await repository.loadPurchaseRecord();

    expect(true, records.isNotEmpty );

  });

  
}