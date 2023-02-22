
  import 'package:stock_manager/Application/ServiceStore/service.dart';
  import 'package:stock_manager/Infrastructure/StockService/api.dart';

  class AddProductModel extends Command<EventData, RawEventData,
    AddProductModelResponse> {
  static final eventId = StockApi.addProductModel.index;
  static final eventName = StockApi.addProductModel.name;

  AddProductModel() : super(eventId, eventName);

  @override
  Future<AddProductModelResponse> handleEvent(EventData eventData) {
    throw UnimplementedError();
  }

  @override
  Future<AddProductModelResponse> handleRawEvent(
      RawEventData eventData) {
    throw UnimplementedError();
  }
  }

  class AddProductModelResponse extends ServiceEventResponse {
  AddProductModelResponse(super.messageId, super.responseType);
  }

  class RawEventData extends RawServiceEventData {
  RawEventData({required int messageId, required String requesterId})
      : super(messageId, requesterId, AddProductModel.eventId);
  }

  class EventData extends ServiceEventData<RawEventData> {
  EventData(super.requesterId);

  @override
  RawEventData toRawServiceEventData() {
    return RawEventData(messageId: messageId, requesterId: requesterId);
  }
  }
  