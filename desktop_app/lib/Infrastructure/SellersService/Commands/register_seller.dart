
  import 'package:stock_manager/Application/ServiceStore/service.dart';
  import 'package:stock_manager/Infrastructure/SellersService/api.dart';
  import 'package:stock_manager/Infrastructure/services.dart';

  class RegisterSeller extends Command<RegisterSellerEventData, RegisterSellerRawEventData,
    RegisterSellerResponse> {
  static final eventId = SellersApi.registerSeller.index;
  static final eventName = SellersApi.registerSeller.name;
  static final serviceId = Services.SellersService.index;

  RegisterSeller() : super(eventId, eventName);

  @override
  Future<RegisterSellerResponse> handleEvent(RegisterSellerEventData eventData) {
    throw UnimplementedError();
  }

  @override
  Future<RegisterSellerResponse> handleRawEvent(
      RegisterSellerRawEventData eventData) {
    throw UnimplementedError();
  }
  }

  class RegisterSellerResponse extends ServiceEventResponse {
  RegisterSellerResponse(super.messageId, super.responseType);
  }

  class RegisterSellerRawEventData extends RawServiceEventData {
  RegisterSellerRawEventData({required int messageId, required String requesterId})
      : super(messageId, requesterId, RegisterSeller.eventId);
  }

  class RegisterSellerEventData extends ServiceEventData<RegisterSellerRawEventData> {
  RegisterSellerEventData(super.requesterId);

  @override
  RegisterSellerRawEventData toRawServiceEventData() {
    return RegisterSellerRawEventData(messageId: messageId, requesterId: requesterId);
  }
  }


class RegisterSellerEvent extends ServiceEvent<RegisterSellerResponse> {
  RegisterSellerEvent({required super.eventData, super.callback})
      : super(RegisterSeller.eventId, RegisterSeller.eventName, RegisterSeller.serviceId);
}
  