import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/Domain/Models/seller.dart';
import 'package:stock_manager/Infrastructure/GraphQlService/graphql.dart';
import 'package:stock_manager/Infrastructure/SellersService/service.dart' as sellers_service;


void main(){

  late GraphQLClient client;
  late Seller dummySeller;

  setUpAll(() async{
    client = getGraphQlClient();

    dummySeller = Seller(
      sellerCode: 1,
      name: "Dummy Seller",
      phone: 1234567890,
      imageUrl: "https://dummyimage.com/600x400/000/fff"
    );

  });


  test('LoadSellers', () async {
      final command = sellers_service.LoadSellers(
        client
      );

      final eventData = sellers_service.LoadSellersEventData(requesterId: "test");

      final response = await command.handleEvent(eventData);

      expect(response.responseType, equals(ServiceEventResponseStatus.success));
  });


  test("Insert Seller", () async{
      final command = sellers_service.RegisterSeller(
        client
      );

      final eventData = sellers_service.RegisterSellerEventData(seller: dummySeller);

      final response = await command.handleEvent(eventData);

      expect(response.responseType, equals(ServiceEventResponseStatus.success));
  });

  test("Delete Seller", () async{

  });

  test("Update Seller", () async{

  });

}