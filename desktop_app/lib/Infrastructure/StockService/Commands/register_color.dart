import 'package:graphql/client.dart';
import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/Domain/Models/sizes_colors.dart';
import 'package:stock_manager/Infrastructure/StockService/api.dart';
import 'package:stock_manager/Infrastructure/services.dart';
import 'package:stock_manager/Infrastructure/GraphQlService/service.dart'
    as graphql_service;

class RegisterColor extends Command<RegisterColorEventData,
    RegisterColorRawEventData, RegisterColorResponse> {
  static final eventId = StockApi.registerColor.index;
  static final eventName = StockApi.registerColor.name;
  static final serviceId = Services.stockService.index;

  final GraphQLClient graphQl;

  RegisterColor(this.graphQl) : super(eventId, eventName);

  @override
  Future<RegisterColorResponse> handleEvent(
      RegisterColorEventData eventData) async {
    final variables = graphql_service.Variables$Mutation$CreateOneColors(
        data: graphql_service.Input$ColorsCreateInput(
            id: eventData.color.colorId, color: eventData.color.color));

    final options =
        graphql_service.Options$Mutation$CreateOneColors(variables: variables);

    final result = await graphQl.mutate(options);

    if (result.hasException) {
      return RegisterColorResponse(
          messageId: eventData.messageId,
          status: ServiceEventResponseStatus.error);
    }

    return RegisterColorResponse(
        messageId: eventData.messageId,
        status: ServiceEventResponseStatus.success);
  }

  @override
  Future<RegisterColorResponse> handleRawEvent(
      RegisterColorRawEventData eventData) {
    throw UnimplementedError();
  }
}

class RegisterColorResponse extends ServiceEventResponse {
  RegisterColorResponse(
      {required int messageId,
      ServiceEventResponseStatus status = ServiceEventResponseStatus.success})
      : super(messageId, status);
}

class RegisterColorRawEventData extends RawServiceEventData {
  RegisterColorRawEventData(
      {required int messageId, required String requesterId})
      : super(messageId, requesterId, RegisterColor.eventId);
}

class RegisterColorEventData
    extends ServiceEventData<RegisterColorRawEventData> {
  final ModelColor color;
  RegisterColorEventData({required this.color, required String requesterId})
      : super(requesterId);

  @override
  RegisterColorRawEventData toRawServiceEventData() {
    return RegisterColorRawEventData(
        messageId: messageId, requesterId: requesterId);
  }
}

class RegisterColorEvent extends ServiceEvent<RegisterColorResponse> {
  RegisterColorEvent({required super.eventData, super.callback})
      : super(RegisterColor.eventId, RegisterColor.eventName,
            RegisterColor.serviceId);
}
