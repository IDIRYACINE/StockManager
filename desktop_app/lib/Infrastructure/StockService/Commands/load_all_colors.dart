import 'package:graphql/client.dart';
import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/Domain/Models/sizes_colors.dart';
import 'package:stock_manager/Infrastructure/StockService/api.dart';
import 'package:stock_manager/Infrastructure/services.dart';

class LoadAllColors extends Command<LoadAllColorsEventData,
    LoadAllColorsRawEventData, LoadAllColorsResponse> {
  static final eventId = StockApi.loadAllColors.index;
  static final eventName = StockApi.loadAllColors.name;
  static final serviceId = Services.stockService.index;
  final GraphQLClient graphQl;

  LoadAllColors(this.graphQl) : super(eventId, eventName);

  @override
  Future<LoadAllColorsResponse> handleEvent(LoadAllColorsEventData eventData) {
    throw UnimplementedError();
  }

  @override
  Future<LoadAllColorsResponse> handleRawEvent(
      LoadAllColorsRawEventData eventData) {
    throw UnimplementedError();
  }
}

class LoadAllColorsResponse extends ServiceEventResponse {
  final List<ModelColor> colors;
  LoadAllColorsResponse(
      {required int messageId,
      required this.colors,
      ServiceEventResponseStatus status = ServiceEventResponseStatus.success})
      : super(messageId, status);
}

class LoadAllColorsRawEventData extends RawServiceEventData {
  LoadAllColorsRawEventData(
      {required int messageId, required String requesterId})
      : super(messageId, requesterId, LoadAllColors.eventId);
}

class LoadAllColorsEventData
    extends ServiceEventData<LoadAllColorsRawEventData> {
  LoadAllColorsEventData({required String requesterId}) : super(requesterId);

  @override
  LoadAllColorsRawEventData toRawServiceEventData() {
    return LoadAllColorsRawEventData(
        messageId: messageId, requesterId: requesterId);
  }
}

class LoadAllColorsEvent extends ServiceEvent<LoadAllColorsResponse> {
  LoadAllColorsEvent({required super.eventData, super.callback})
      : super(LoadAllColors.eventId, LoadAllColors.eventName,
            LoadAllColors.serviceId);
}
