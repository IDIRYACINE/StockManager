
  import 'package:stock_manager/Application/ServiceStore/service.dart';
  import 'package:stock_manager/Infrastructure/StockService/api.dart';
  import 'package:stock_manager/Infrastructure/services.dart';

  class UpdateProductModel extends Command<UpdateProductModelEventData, UpdateProductModelRawEventData,
    UpdateProductModelResponse> {
  static final eventId = StockApi.updateProductModel.index;
  static final eventName = StockApi.updateProductModel.name;
  static final serviceId = Services.stockService.index;

  UpdateProductModel() : super(eventId, eventName);

  @override
  Future<UpdateProductModelResponse> handleEvent(UpdateProductModelEventData eventData) {
    throw UnimplementedError();
  }

  @override
  Future<UpdateProductModelResponse> handleRawEvent(
      UpdateProductModelRawEventData eventData) {
    throw UnimplementedError();
  }
  }

  class UpdateProductModelResponse extends ServiceEventResponse {
  UpdateProductModelResponse(super.messageId, super.responseType);
  }

  class UpdateProductModelRawEventData extends RawServiceEventData {
  UpdateProductModelRawEventData({required int messageId, required String requesterId})
      : super(messageId, requesterId, UpdateProductModel.eventId);
  }

  class UpdateProductModelEventData extends ServiceEventData<UpdateProductModelRawEventData> {
  UpdateProductModelEventData(super.requesterId);

  @override
  UpdateProductModelRawEventData toRawServiceEventData() {
    return UpdateProductModelRawEventData(messageId: messageId, requesterId: requesterId);
  }
  }


class UpdateProductModelEvent extends ServiceEvent<UpdateProductModelResponse> {
  UpdateProductModelEvent({required super.eventData, super.callback})
      : super(UpdateProductModel.eventId, UpdateProductModel.eventName, UpdateProductModel.serviceId);
}
  