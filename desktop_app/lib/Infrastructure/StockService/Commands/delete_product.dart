
  import 'package:stock_manager/Application/ServiceStore/service.dart';
  import 'package:stock_manager/Infrastructure/StockService/api.dart';
  import 'package:stock_manager/Infrastructure/services.dart';

  class DeleteProduct extends Command<DeleteProductEventData, DeleteProductRawEventData,
    DeleteProductResponse> {
  static final eventId = StockApi.deleteProduct.index;
  static final eventName = StockApi.deleteProduct.name;
  static final serviceId = Services.stockService.index;

  DeleteProduct() : super(eventId, eventName);

  @override
  Future<DeleteProductResponse> handleEvent(DeleteProductEventData eventData) {
    throw UnimplementedError();
  }

  @override
  Future<DeleteProductResponse> handleRawEvent(
      DeleteProductRawEventData eventData) {
    throw UnimplementedError();
  }
  }

  class DeleteProductResponse extends ServiceEventResponse {
  DeleteProductResponse(super.messageId, super.responseType);
  }

  class DeleteProductRawEventData extends RawServiceEventData {
  DeleteProductRawEventData({required int messageId, required String requesterId})
      : super(messageId, requesterId, DeleteProduct.eventId);
  }

  class DeleteProductEventData extends ServiceEventData<DeleteProductRawEventData> {
  DeleteProductEventData(super.requesterId);

  @override
  DeleteProductRawEventData toRawServiceEventData() {
    return DeleteProductRawEventData(messageId: messageId, requesterId: requesterId);
  }
  }


class DeleteProductEvent extends ServiceEvent<DeleteProductResponse> {
  DeleteProductEvent({required super.eventData, super.callback})
      : super(DeleteProduct.eventId, DeleteProduct.eventName, DeleteProduct.serviceId);
}
  