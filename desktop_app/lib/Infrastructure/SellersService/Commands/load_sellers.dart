import 'package:graphql/client.dart';
import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/Domain/Models/seller.dart';
import 'package:stock_manager/Infrastructure/SellersService/api.dart';
import 'package:stock_manager/Infrastructure/services.dart';

class LoadSellers extends Command<LoadSellersEventData, LoadSellersRawEventData,
    LoadSellersResponse> {
  static final eventId = SellersApi.loadSellers.index;
  static final eventName = SellersApi.loadSellers.name;
  static final serviceId = Services.sellersService.index;

  final GraphQLClient graphQl;

  LoadSellers(this.graphQl) : super(eventId, eventName);

  @override
  Future<LoadSellersResponse> handleEvent(LoadSellersEventData eventData) async{
    const String readAllSellers = r"""
      query FindManySellers {
  findManySellers {
    picture
    seller_id
    seller_name
    seller_phone
  }
}
    """;

    final QueryOptions options = QueryOptions(
      document: gql(readAllSellers),
    );

    final result = await  graphQl.query(options);

    if (result.hasException) {
      return LoadSellersResponse(
          messageId: eventData.messageId, status: ServiceEventResponseStatus.error);
    }

    final json = result.data!['findManySellers'] as List<dynamic>;

    final List<Seller> sellers = sellersFromJsonList(json);

    return LoadSellersResponse(messageId: eventData.messageId, sellers: sellers);

  }

  @override
  Future<LoadSellersResponse> handleRawEvent(
      LoadSellersRawEventData eventData) {
    throw UnimplementedError();
  }
}

class LoadSellersResponse extends ServiceEventResponse {
  final List<Seller> sellers;
  LoadSellersResponse(
      {required int messageId,
       this.sellers = const [], 
      ServiceEventResponseStatus status = ServiceEventResponseStatus.success})
      : super(messageId, status);
}

class LoadSellersRawEventData extends RawServiceEventData {
  LoadSellersRawEventData({required int messageId, required String requesterId})
      : super(messageId, requesterId, LoadSellers.eventId);
}

class LoadSellersEventData extends ServiceEventData<LoadSellersRawEventData> {
  LoadSellersEventData({required String requesterId } ): super(requesterId);

  @override
  LoadSellersRawEventData toRawServiceEventData() {
    return LoadSellersRawEventData(
        messageId: messageId, requesterId: requesterId);
  }
}

class LoadSellersEvent extends ServiceEvent<LoadSellersResponse> {
  LoadSellersEvent({required super.eventData, super.callback})
      : super(
            LoadSellers.eventId, LoadSellers.eventName, LoadSellers.serviceId);
}
