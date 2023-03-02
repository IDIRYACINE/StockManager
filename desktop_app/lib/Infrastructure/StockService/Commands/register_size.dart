import 'package:graphql/client.dart';
import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/Domain/Models/sizes_colors.dart';
import 'package:stock_manager/Infrastructure/StockService/api.dart';
import 'package:stock_manager/Infrastructure/services.dart';

class RegisterSize extends Command<RegisterSizeEventData,
    RegisterSizeRawEventData, RegisterSizeResponse> {
  static final eventId = StockApi.registerSize.index;
  static final eventName = StockApi.registerSize.name;
  static final serviceId = Services.stockService.index;
  final GraphQLClient graphQl;

  RegisterSize(this.graphQl) : super(eventId, eventName);

  @override
  Future<RegisterSizeResponse> handleEvent(RegisterSizeEventData eventData) {
    throw UnimplementedError();
  }

  @override
  Future<RegisterSizeResponse> handleRawEvent(
      RegisterSizeRawEventData eventData) {
    throw UnimplementedError();
  }
}

class RegisterSizeResponse extends ServiceEventResponse {
  RegisterSizeResponse(super.messageId, super.responseType);
}

class RegisterSizeRawEventData extends RawServiceEventData {
  RegisterSizeRawEventData(
      {required int messageId, required String requesterId})
      : super(messageId, requesterId, RegisterSize.eventId);
}

class RegisterSizeEventData extends ServiceEventData<RegisterSizeRawEventData> {
  final ModelSize size;
  RegisterSizeEventData({required this.size,required String requesterId}) : super(requesterId);

  @override
  RegisterSizeRawEventData toRawServiceEventData() {
    return RegisterSizeRawEventData(
        messageId: messageId, requesterId: requesterId);
  }
}

class RegisterSizeEvent extends ServiceEvent<RegisterSizeResponse> {
  RegisterSizeEvent({required super.eventData, super.callback})
      : super(RegisterSize.eventId, RegisterSize.eventName,
            RegisterSize.serviceId);
}
