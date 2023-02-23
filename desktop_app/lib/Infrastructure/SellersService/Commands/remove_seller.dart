
  import 'package:stock_manager/Application/ServiceStore/service.dart';
  import 'package:stock_manager/Infrastructure/SellersService/api.dart';
  import 'package:stock_manager/Infrastructure/services.dart';

  class RemoveSeller extends Command<RemoveSellerEventData, RemoveSellerRawEventData,
    RemoveSellerResponse> {
  static final eventId = SellersApi.removeSeller.index;
  static final eventName = SellersApi.removeSeller.name;
  static final serviceId = Services.sellersService.index;

  RemoveSeller() : super(eventId, eventName);

  @override
  Future<RemoveSellerResponse> handleEvent(RemoveSellerEventData eventData) {
    throw UnimplementedError();
  }

  @override
  Future<RemoveSellerResponse> handleRawEvent(
      RemoveSellerRawEventData eventData) {
    throw UnimplementedError();
  }
  }

  class RemoveSellerResponse extends ServiceEventResponse {
  RemoveSellerResponse(super.messageId, super.responseType);
  }

  class RemoveSellerRawEventData extends RawServiceEventData {
  RemoveSellerRawEventData({required int messageId, required String requesterId})
      : super(messageId, requesterId, RemoveSeller.eventId);
  }

  class RemoveSellerEventData extends ServiceEventData<RemoveSellerRawEventData> {
  RemoveSellerEventData(super.requesterId);

  @override
  RemoveSellerRawEventData toRawServiceEventData() {
    return RemoveSellerRawEventData(messageId: messageId, requesterId: requesterId);
  }
  }


class RemoveSellerEvent extends ServiceEvent<RemoveSellerResponse> {
  RemoveSellerEvent({required super.eventData, super.callback})
      : super(RemoveSeller.eventId, RemoveSeller.eventName, RemoveSeller.serviceId);
}
  