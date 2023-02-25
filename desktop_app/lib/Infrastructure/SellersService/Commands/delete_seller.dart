import 'package:graphql/client.dart';
import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/Domain/Models/seller.dart';
import 'package:stock_manager/Infrastructure/SellersService/api.dart';
import 'package:stock_manager/Infrastructure/services.dart';
import 'package:stock_manager/Infrastructure/GraphQlService/service.dart'
    as graphql_service;

class DeleteSeller extends Command<DeleteSellerEventData,
    DeleteSellerRawEventData, DeleteSellerResponse> {
  static final eventId = SellersApi.deleteSeller.index;
  static final eventName = SellersApi.deleteSeller.name;
  static final serviceId = Services.sellersService.index;

  final GraphQLClient graphQl;

  DeleteSeller(this.graphQl) : super(eventId, eventName);

  @override
  Future<DeleteSellerResponse> handleEvent(DeleteSellerEventData eventData) async{
    const mutationDoc = r""" 
          mutation DeleteOneSellers($where: SellersWhereUniqueInput!) {
  deleteOneSellers(where: $where) {
    seller_id
  }
}
    """;

    final seller = eventData.seller;

    final where = graphql_service.Input$SellersWhereUniqueInput(
        seller_id: seller.sellerCode);

    final MutationOptions options = MutationOptions(
      document: gql(mutationDoc),
      variables: {"where": where},
    );

    final result = await graphQl.mutate(options);

    if (result.hasException) {
      return DeleteSellerResponse(
          messageId: eventData.messageId, status: ServiceEventResponseStatus.error);
    }

    return DeleteSellerResponse(messageId: eventData.messageId);
  }

  @override
  Future<DeleteSellerResponse> handleRawEvent(
      DeleteSellerRawEventData eventData) {
    throw UnimplementedError();
  }
}

class DeleteSellerResponse extends ServiceEventResponse {
  DeleteSellerResponse({required int messageId,
      ServiceEventResponseStatus status = ServiceEventResponseStatus.success})
      : super(messageId, status);
}

class DeleteSellerRawEventData extends RawServiceEventData {
  DeleteSellerRawEventData(
      {required int messageId, required String requesterId})
      : super(messageId, requesterId, DeleteSeller.eventId);
}

class DeleteSellerEventData extends ServiceEventData<DeleteSellerRawEventData> {
  final Seller seller;
  DeleteSellerEventData({required String requesterId, required this.seller}) : super(requesterId);

  @override
  DeleteSellerRawEventData toRawServiceEventData() {
    return DeleteSellerRawEventData(
        messageId: messageId, requesterId: requesterId);
  }
}

class DeleteSellerEvent extends ServiceEvent<DeleteSellerResponse> {
  DeleteSellerEvent({required super.eventData, super.callback})
      : super(DeleteSeller.eventId, DeleteSeller.eventName,
            DeleteSeller.serviceId);
}
