
  import 'package:stock_manager/Application/ServiceStore/service.dart';
  import 'package:stock_manager/Infrastructure/StockService/api.dart';
  import 'package:stock_manager/Infrastructure/services.dart';

  class DeleteProductModel extends Command<DeleteProductModelEventData, DeleteProductModelRawEventData,
    DeleteProductModelResponse> {
  static final eventId = StockApi.deleteProductModel.index;
  static final eventName = StockApi.deleteProductModel.name;
  static final serviceId = Services.stockService.index;

  DeleteProductModel() : super(eventId, eventName);

  @override
  Future<DeleteProductModelResponse> handleEvent(DeleteProductModelEventData eventData) {
    throw UnimplementedError();
  }

  @override
  Future<DeleteProductModelResponse> handleRawEvent(
      DeleteProductModelRawEventData eventData) {
    throw UnimplementedError();
  }
  }

  class DeleteProductModelResponse extends ServiceEventResponse {
  DeleteProductModelResponse(super.messageId, super.responseType);
  }

  class DeleteProductModelRawEventData extends RawServiceEventData {
  DeleteProductModelRawEventData({required int messageId, required String requesterId})
      : super(messageId, requesterId, DeleteProductModel.eventId);
  }

  class DeleteProductModelEventData extends ServiceEventData<DeleteProductModelRawEventData> {
  DeleteProductModelEventData(super.requesterId);

  @override
  DeleteProductModelRawEventData toRawServiceEventData() {
    return DeleteProductModelRawEventData(messageId: messageId, requesterId: requesterId);
  }
  }


class DeleteProductModelEvent extends ServiceEvent<DeleteProductModelResponse> {
  DeleteProductModelEvent({required super.eventData, super.callback})
      : super(DeleteProductModel.eventId, DeleteProductModel.eventName, DeleteProductModel.serviceId);
}
  