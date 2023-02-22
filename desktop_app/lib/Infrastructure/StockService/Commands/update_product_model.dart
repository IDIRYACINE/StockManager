
  import 'package:stock_manager/Application/ServiceStore/service.dart';
  import 'package:stock_manager/Infrastructure/StockService/api.dart';

  class UpdateProductModel extends Command<EventData, RawEventData,
    UpdateProductModelResponse> {
  static final eventId = StockApi.updateProductModel.index;
  static final eventName = StockApi.updateProductModel.name;

  UpdateProductModel() : super(eventId, eventName);

  @override
  Future<UpdateProductModelResponse> handleEvent(EventData eventData) {
    throw UnimplementedError();
  }

  @override
  Future<UpdateProductModelResponse> handleRawEvent(
      RawEventData eventData) {
    throw UnimplementedError();
  }
  }

  class UpdateProductModelResponse extends ServiceEventResponse {
  UpdateProductModelResponse(super.messageId, super.responseType);
  }

  class RawEventData extends RawServiceEventData {
  RawEventData({required int messageId, required String requesterId})
      : super(messageId, requesterId, UpdateProductModel.eventId);
  }

  class EventData extends ServiceEventData<RawEventData> {
  EventData(super.requesterId);

  @override
  RawEventData toRawServiceEventData() {
    return RawEventData(messageId: messageId, requesterId: requesterId);
  }
  }
  