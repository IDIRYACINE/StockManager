
  import 'package:stock_manager/Application/ServiceStore/service.dart';
  import 'package:stock_manager/Infrastructure/SellersService/api.dart';
  import 'package:stock_manager/Infrastructure/services.dart';

  class UpdateSeller extends Command<UpdateSellerEventData, UpdateSellerRawEventData,
    UpdateSellerResponse> {
  static final eventId = SellersApi.updateSeller.index;
  static final eventName = SellersApi.updateSeller.name;
  static final serviceId = Services.sellersService.index;

  UpdateSeller() : super(eventId, eventName);

  @override
  Future<UpdateSellerResponse> handleEvent(UpdateSellerEventData eventData) {
    throw UnimplementedError();
  }

  @override
  Future<UpdateSellerResponse> handleRawEvent(
      UpdateSellerRawEventData eventData) {
    throw UnimplementedError();
  }
  }

  class UpdateSellerResponse extends ServiceEventResponse {
  UpdateSellerResponse(super.messageId, super.responseType);
  }

  class UpdateSellerRawEventData extends RawServiceEventData {
  UpdateSellerRawEventData({required int messageId, required String requesterId})
      : super(messageId, requesterId, UpdateSeller.eventId);
  }

  class UpdateSellerEventData extends ServiceEventData<UpdateSellerRawEventData> {
  UpdateSellerEventData(super.requesterId);

  @override
  UpdateSellerRawEventData toRawServiceEventData() {
    return UpdateSellerRawEventData(messageId: messageId, requesterId: requesterId);
  }
  }


class UpdateSellerEvent extends ServiceEvent<UpdateSellerResponse> {
  UpdateSellerEvent({required super.eventData, super.callback})
      : super(UpdateSeller.eventId, UpdateSeller.eventName, UpdateSeller.serviceId);
}
  