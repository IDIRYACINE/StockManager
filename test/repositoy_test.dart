
import 'package:flutter_test/flutter_test.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Infrastructure/Database/database.dart';
import 'package:stock_manager/Infrastructure/Database/repository.dart';

void main() {
  const String username = 'Imad' , password = '123';
  test("test record loading", () async {

    Database database = Database();
    await database.connect(username, password);
    DatabaseRepository repository = DatabaseRepository(database);
    List<Record> records = await repository.loadPurchaseRecord();

    expect(true, records.isNotEmpty );

  });
}