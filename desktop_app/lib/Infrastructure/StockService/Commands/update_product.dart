
  import 'package:stock_manager/Application/ServiceStore/service.dart';
  import 'package:stock_manager/Infrastructure/StockService/api.dart';
  import 'package:stock_manager/Infrastructure/services.dart';

  class UpdateProduct extends Command<UpdateProductEventData, UpdateProductRawEventData,
    UpdateProductResponse> {
  static final eventId = StockApi.updateProduct.index;
  static final eventName = StockApi.updateProduct.name;
  static final serviceId = Services.stockService.index;

  UpdateProduct() : super(eventId, eventName);

  @override
  Future<UpdateProductResponse> handleEvent(UpdateProductEventData eventData) {
    throw UnimplementedError();
  }

  @override
  Future<UpdateProductResponse> handleRawEvent(
      UpdateProductRawEventData eventData) {
    throw UnimplementedError();
  }
  }

  class UpdateProductResponse extends ServiceEventResponse {
  UpdateProductResponse(super.messageId, super.responseType);
  }

  class UpdateProductRawEventData extends RawServiceEventData {
  UpdateProductRawEventData({required int messageId, required String requesterId})
      : super(messageId, requesterId, UpdateProduct.eventId);
  }

  class UpdateProductEventData extends ServiceEventData<UpdateProductRawEventData> {
  UpdateProductEventData(super.requesterId);

  @override
  UpdateProductRawEventData toRawServiceEventData() {
    return UpdateProductRawEventData(messageId: messageId, requesterId: requesterId);
  }
  }


class UpdateProductEvent extends ServiceEvent<UpdateProductResponse> {
  UpdateProductEvent({required super.eventData, super.callback})
      : super(UpdateProduct.eventId, UpdateProduct.eventName, UpdateProduct.serviceId);
}
  