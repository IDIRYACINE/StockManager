import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/Domain/Models/region.dart';
import 'package:stock_manager/Infrastructure/RegionService/api.dart';
import 'package:stock_manager/Infrastructure/services.dart';
import 'package:stock_manager/Infrastructure/GraphQlService/service.dart'
    as graphql_service;
import 'package:graphql/client.dart';

class RegisterCity extends Command<RegisterCityEventData,
    RegisterCityRawEventData, RegisterCityResponse> {
  static final eventId = RegionApi.registerCity.index;
  static final eventName = RegionApi.registerCity.name;
  static final serviceId = Services.regionService.index;

  final GraphQLClient graphQl;

  RegisterCity(this.graphQl) : super(eventId, eventName);

  @override
  Future<RegisterCityResponse> handleEvent(
      RegisterCityEventData eventData) async {
    final city = eventData.city;

    final input = graphql_service.Input$CityCreateInput(
      city_id: city.cityId,
      city_name: city.cityName,
    );

    final mutationVariables =
        graphql_service.Variables$Mutation$CreateOneCity(data: input);

    final MutationOptions options =
        graphql_service.Options$Mutation$CreateOneCity(
            variables: mutationVariables);

    final result = await graphQl.mutate(options);

    if (result.hasException) {
      return RegisterCityResponse(
          messageId: eventData.messageId,
          status: ServiceEventResponseStatus.error);
    }

    return RegisterCityResponse(messageId: eventData.messageId);
  }

  @override
  Future<RegisterCityResponse> handleRawEvent(
      RegisterCityRawEventData eventData) {
    throw UnimplementedError();
  }
}

class RegisterCityResponse extends ServiceEventResponse {
  RegisterCityResponse(
      {required int messageId,
      ServiceEventResponseStatus status = ServiceEventResponseStatus.success})
      : super(messageId, status);
}

class RegisterCityRawEventData extends RawServiceEventData {
  RegisterCityRawEventData(
      {required int messageId, required String requesterId})
      : super(messageId, requesterId, RegisterCity.eventId);
}

class RegisterCityEventData extends ServiceEventData<RegisterCityRawEventData> {
  final City city;

  RegisterCityEventData({required String requesterId, required this.city})
      : super(requesterId);

  @override
  RegisterCityRawEventData toRawServiceEventData() {
    return RegisterCityRawEventData(
        messageId: messageId, requesterId: requesterId);
  }
}

class RegisterCityEvent extends ServiceEvent<RegisterCityResponse> {
  RegisterCityEvent({required super.eventData, super.callback})
      : super(RegisterCity.eventId, RegisterCity.eventName,
            RegisterCity.serviceId);
}
