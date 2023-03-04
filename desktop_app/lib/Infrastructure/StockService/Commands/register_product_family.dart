import 'package:graphql/client.dart';
import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/Domain/Models/product.dart';
import 'package:stock_manager/Infrastructure/StockService/api.dart';
import 'package:stock_manager/Infrastructure/services.dart';
import 'package:stock_manager/Infrastructure/GraphQlService/service.dart'
    as graphql_service;

class RegisterProductFamily extends Command<RegisterProductFamilyEventData,
    RegisterProductFamilyRawEventData, RegisterProductFamilyResponse> {
  static final eventId = StockApi.registerProductFamily.index;
  static final eventName = StockApi.registerProductFamily.name;
  static final serviceId = Services.stockService.index;

  final GraphQLClient graphQl;

  RegisterProductFamily(this.graphQl) : super(eventId, eventName);

  @override
  Future<RegisterProductFamilyResponse> handleEvent(
      RegisterProductFamilyEventData eventData) async {
    final data = graphql_service.Input$ProductFamilyCreateInput(
      name: eventData.family.name,
    );
    final variables =
        graphql_service.Variables$Mutation$CreateOneProductFamily(data: data);

    final options = graphql_service.Options$Mutation$CreateOneProductFamily(
      variables: variables,
    );

    final result = await graphQl.mutate(options);

    if (result.hasException) {
      return RegisterProductFamilyResponse(
        messageId: eventData.messageId,
        status: ServiceEventResponseStatus.error,
      );
    }

    return RegisterProductFamilyResponse(
      messageId: eventData.messageId,
    );
  }

  @override
  Future<RegisterProductFamilyResponse> handleRawEvent(
      RegisterProductFamilyRawEventData eventData) {
    throw UnimplementedError();
  }
}

class RegisterProductFamilyResponse extends ServiceEventResponse {
  RegisterProductFamilyResponse(
      {required int messageId,
      ServiceEventResponseStatus status = ServiceEventResponseStatus.success})
      : super(messageId, status);
}

class RegisterProductFamilyRawEventData extends RawServiceEventData {
  RegisterProductFamilyRawEventData(
      {required int messageId, required String requesterId})
      : super(messageId, requesterId, RegisterProductFamily.eventId);
}

class RegisterProductFamilyEventData
    extends ServiceEventData<RegisterProductFamilyRawEventData> {
  final ProductFamily family;
  RegisterProductFamilyEventData(
      {required this.family, required String requesterId})
      : super(requesterId);

  @override
  RegisterProductFamilyRawEventData toRawServiceEventData() {
    return RegisterProductFamilyRawEventData(
        messageId: messageId, requesterId: requesterId);
  }
}

class RegisterProductFamilyEvent
    extends ServiceEvent<RegisterProductFamilyResponse> {
  RegisterProductFamilyEvent({required super.eventData, super.callback})
      : super(RegisterProductFamily.eventId, RegisterProductFamily.eventName,
            RegisterProductFamily.serviceId);
}
