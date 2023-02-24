import 'package:graphql/client.dart';
import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/Domain/Models/seller.dart';
import 'package:stock_manager/Infrastructure/SellersService/api.dart';
import 'package:stock_manager/Infrastructure/services.dart';
import 'package:stock_manager/Infrastructure/GraphQlService/service.dart'
    as graphql_service;

class RegisterSeller extends Command<RegisterSellerEventData,
    RegisterSellerRawEventData, RegisterSellerResponse> {
  static final eventId = SellersApi.registerSeller.index;
  static final eventName = SellersApi.registerSeller.name;
  static final serviceId = Services.sellersService.index;

  final GraphQLClient graphQl;

  RegisterSeller(this.graphQl) : super(eventId, eventName);

  @override
  Future<RegisterSellerResponse> handleEvent(
      RegisterSellerEventData eventData) async{
    const mutationDoc =
        r"""mutation CreateOneSellers($data: SellersCreateInput!) {
  createOneSellers(data: $data) {
    picture
    seller_id
    seller_name
    seller_phone
  }
}""";
    final seller = eventData.seller;

    final input = graphql_service.Input$SellersCreateInput(
        picture: seller.imageUrl,
        seller_name: seller.name,
        seller_phone: seller.phone.toString());

    final MutationOptions options = MutationOptions(
      document: gql(mutationDoc),
      variables: {"data": input},
    );

    final result = await graphQl.mutate(options);

    if (result.hasException) {
      return RegisterSellerResponse(
          messageId: eventData.messageId, status: ServiceEventResponseStatus.error);
    }

    return RegisterSellerResponse(messageId: eventData.messageId);
    
  }

  @override
  Future<RegisterSellerResponse> handleRawEvent(
      RegisterSellerRawEventData eventData) {
    throw UnimplementedError();
  }
}

class RegisterSellerResponse extends ServiceEventResponse {
  RegisterSellerResponse(
      {required int messageId,
      ServiceEventResponseStatus status = ServiceEventResponseStatus.success})
      : super(messageId, status);
}

class RegisterSellerRawEventData extends RawServiceEventData {
  RegisterSellerRawEventData(
      {required int messageId, required String requesterId})
      : super(messageId, requesterId, RegisterSeller.eventId);
}

class RegisterSellerEventData
    extends ServiceEventData<RegisterSellerRawEventData> {
  final Seller seller;

  RegisterSellerEventData({required this.seller, String requesterId = ""})
      : super(requesterId);

  @override
  RegisterSellerRawEventData toRawServiceEventData() {
    return RegisterSellerRawEventData(
        messageId: messageId, requesterId: requesterId);
  }
}

class RegisterSellerEvent extends ServiceEvent<RegisterSellerResponse> {
  RegisterSellerEvent({required super.eventData, super.callback})
      : super(RegisterSeller.eventId, RegisterSeller.eventName,
            RegisterSeller.serviceId);
}
