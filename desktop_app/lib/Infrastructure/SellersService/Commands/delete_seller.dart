import 'package:graphql/client.dart';
import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/Infrastructure/SellersService/api.dart';
import 'package:stock_manager/Infrastructure/services.dart';

class DeleteSeller extends Command<DeleteSellerEventData,
    DeleteSellerRawEventData, DeleteSellerResponse> {
  static final eventId = SellersApi.deleteSeller.index;
  static final eventName = SellersApi.deleteSeller.name;
  static final serviceId = Services.sellersService.index;

  DeleteSeller(GraphQLClient graphQL) : super(eventId, eventName);

  @override
  Future<DeleteSellerResponse> handleEvent(DeleteSellerEventData eventData) {
    throw UnimplementedError();
  }

  @override
  Future<DeleteSellerResponse> handleRawEvent(
      DeleteSellerRawEventData eventData) {
    throw UnimplementedError();
  }
}

class DeleteSellerResponse extends ServiceEventResponse {
  DeleteSellerResponse(super.messageId, super.responseType);
}

class DeleteSellerRawEventData extends RawServiceEventData {
  DeleteSellerRawEventData(
      {required int messageId, required String requesterId})
      : super(messageId, requesterId, DeleteSeller.eventId);
}

class DeleteSellerEventData extends ServiceEventData<DeleteSellerRawEventData> {
  DeleteSellerEventData(super.requesterId);

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
