import 'package:graphql/client.dart';
import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/Domain/Models/seller.dart';
import 'package:stock_manager/Infrastructure/SellersService/api.dart';
import 'package:stock_manager/Infrastructure/services.dart';
import 'package:stock_manager/Infrastructure/GraphQlService/service.dart'
    as graphql_service;


class UpdateSeller extends Command<UpdateSellerEventData,
    UpdateSellerRawEventData, UpdateSellerResponse> {
  static final eventId = SellersApi.updateSeller.index;
  static final eventName = SellersApi.updateSeller.name;
  static final serviceId = Services.sellersService.index;

  final GraphQLClient graphQl;

  UpdateSeller(this.graphQl) : super(eventId, eventName);

  @override
  Future<UpdateSellerResponse> handleEvent(UpdateSellerEventData eventData) async{
    const mutationDoc = r"""
            mutation UpdateOneSellers($data: SellersUpdateInput!, $where: SellersWhereUniqueInput!) {
  updateOneSellers(data: $data, where: $where) {
    seller_id
  }
}
    """;


    
    final seller = eventData.seller;

    final where = graphql_service.Input$SellersWhereUniqueInput(
        seller_id: seller.sellerCode);

    final input = graphql_service.Input$SellersUpdateInput(
        seller_name: graphql_service.Input$StringFieldUpdateOperationsInput(
            $set: seller.name),
        seller_phone: graphql_service.Input$StringFieldUpdateOperationsInput(
            $set: seller.phone.toString()),
    );

    final MutationOptions options = MutationOptions(
      document: gql(mutationDoc),
      variables: {"data": input,
      "where": where},
    );

    final result = await graphQl.mutate(options);

    if (result.hasException) {
      return UpdateSellerResponse(
          messageId: eventData.messageId, status: ServiceEventResponseStatus.error);
    }

    return UpdateSellerResponse(messageId: eventData.messageId);

  }

  @override
  Future<UpdateSellerResponse> handleRawEvent(
      UpdateSellerRawEventData eventData) {
    throw UnimplementedError();
  }
}

class UpdateSellerResponse extends ServiceEventResponse {
  UpdateSellerResponse({required int messageId,
      ServiceEventResponseStatus status = ServiceEventResponseStatus.success})
      : super(messageId, status);
}

class UpdateSellerRawEventData extends RawServiceEventData {
  UpdateSellerRawEventData(
      {required int messageId, required String requesterId})
      : super(messageId, requesterId, UpdateSeller.eventId);
}

class UpdateSellerEventData extends ServiceEventData<UpdateSellerRawEventData> {
  final Seller seller;
  UpdateSellerEventData({required String requesterId, required this.seller}) : super(requesterId);

  @override
  UpdateSellerRawEventData toRawServiceEventData() {
    return UpdateSellerRawEventData(
        messageId: messageId, requesterId: requesterId);
  }
}

class UpdateSellerEvent extends ServiceEvent<UpdateSellerResponse> {
  UpdateSellerEvent({required super.eventData, super.callback})
      : super(UpdateSeller.eventId, UpdateSeller.eventName,
            UpdateSeller.serviceId);
}
