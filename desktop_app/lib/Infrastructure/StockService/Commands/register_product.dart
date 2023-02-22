
  import 'package:stock_manager/Application/ServiceStore/service.dart';
  import 'package:stock_manager/Infrastructure/StockService/api.dart';
  import 'package:stock_manager/Infrastructure/services.dart';

  class RegisterProduct extends Command<RegisterProductEventData, RegisterProductRawEventData,
    RegisterProductResponse> {
  static final eventId = StockApi.registerProduct.index;
  static final eventName = StockApi.registerProduct.name;
  static final serviceId = Services.stockService.index;

  RegisterProduct() : super(eventId, eventName);

  @override
  Future<RegisterProductResponse> handleEvent(RegisterProductEventData eventData) {
    throw UnimplementedError();
  }

  @override
  Future<RegisterProductResponse> handleRawEvent(
      RegisterProductRawEventData eventData) {
    throw UnimplementedError();
  }
  }

  class RegisterProductResponse extends ServiceEventResponse {
  RegisterProductResponse(super.messageId, super.responseType);
  }

  class RegisterProductRawEventData extends RawServiceEventData {
  RegisterProductRawEventData({required int messageId, required String requesterId})
      : super(messageId, requesterId, RegisterProduct.eventId);
  }

  class RegisterProductEventData extends ServiceEventData<RegisterProductRawEventData> {
  RegisterProductEventData(super.requesterId);

  @override
  RegisterProductRawEventData toRawServiceEventData() {
    return RegisterProductRawEventData(messageId: messageId, requesterId: requesterId);
  }
  }


class RegisterProductEvent extends ServiceEvent<RegisterProductResponse> {
  RegisterProductEvent({required super.eventData, super.callback})
      : super(RegisterProduct.eventId, RegisterProduct.eventName, RegisterProduct.serviceId);
}
  