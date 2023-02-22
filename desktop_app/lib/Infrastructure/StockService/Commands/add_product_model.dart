
  import 'package:stock_manager/Application/ServiceStore/service.dart';
  import 'package:stock_manager/Infrastructure/StockService/api.dart';
  import 'package:stock_manager/Infrastructure/services.dart';

  class AddProductModel extends Command<AddProductModelEventData, AddProductModelRawEventData,
    AddProductModelResponse> {
  static final eventId = StockApi.addProductModel.index;
  static final eventName = StockApi.addProductModel.name;
  static final serviceId = Services.stockService.index;

  AddProductModel() : super(eventId, eventName);

  @override
  Future<AddProductModelResponse> handleEvent(AddProductModelEventData eventData) {
    throw UnimplementedError();
  }

  @override
  Future<AddProductModelResponse> handleRawEvent(
      AddProductModelRawEventData eventData) {
    throw UnimplementedError();
  }
  }

  class AddProductModelResponse extends ServiceEventResponse {
  AddProductModelResponse(super.messageId, super.responseType);
  }

  class AddProductModelRawEventData extends RawServiceEventData {
  AddProductModelRawEventData({required int messageId, required String requesterId})
      : super(messageId, requesterId, AddProductModel.eventId);
  }

  class AddProductModelEventData extends ServiceEventData<AddProductModelRawEventData> {
  AddProductModelEventData(super.requesterId);

  @override
  AddProductModelRawEventData toRawServiceEventData() {
    return AddProductModelRawEventData(messageId: messageId, requesterId: requesterId);
  }
  }


class AddProductModelEvent extends ServiceEvent<AddProductModelResponse> {
  AddProductModelEvent({required super.eventData, super.callback})
      : super(AddProductModel.eventId, AddProductModel.eventName, AddProductModel.serviceId);
}
  