import 'package:graphql/client.dart';
import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/Domain/Models/sizes_colors.dart';
import 'package:stock_manager/Infrastructure/StockService/api.dart';
import 'package:stock_manager/Infrastructure/services.dart';
import 'package:stock_manager/Types/i_wrappers.dart';

class UpdateColor extends Command<UpdateColorEventData, UpdateColorRawEventData,
    UpdateColorResponse> {
  static final eventId = StockApi.updateColor.index;
  static final eventName = StockApi.updateColor.name;
  static final serviceId = Services.stockService.index;
  final GraphQLClient graphQl;

  UpdateColor(this.graphQl) : super(eventId, eventName);

  @override
  Future<UpdateColorResponse> handleEvent(UpdateColorEventData eventData) {
    throw UnimplementedError();
  }

  @override
  Future<UpdateColorResponse> handleRawEvent(
      UpdateColorRawEventData eventData) {
    throw UnimplementedError();
  }
}

class UpdateColorResponse extends ServiceEventResponse {
  UpdateColorResponse(super.messageId, super.responseType);
}

class UpdateColorRawEventData extends RawServiceEventData {
  UpdateColorRawEventData({required int messageId, required String requesterId})
      : super(messageId, requesterId, UpdateColor.eventId);
}

class UpdateColorEventData extends ServiceEventData<UpdateColorRawEventData> {
  final UpdateRequestWrapper<ModelColor> color;
  UpdateColorEventData({required this.color, required String requesterId})
      : super(requesterId);

  @override
  UpdateColorRawEventData toRawServiceEventData() {
    return UpdateColorRawEventData(
        messageId: messageId, requesterId: requesterId);
  }
}

class UpdateColorEvent extends ServiceEvent<UpdateColorResponse> {
  UpdateColorEvent({required super.eventData, super.callback})
      : super(
            UpdateColor.eventId, UpdateColor.eventName, UpdateColor.serviceId);
}
