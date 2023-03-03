import 'package:stock_manager/Application/ServiceStore/service.dart';
import 'package:stock_manager/Domain/Models/region.dart';
import 'package:stock_manager/Infrastructure/RegionService/api.dart';
import 'package:stock_manager/Infrastructure/services.dart';
import 'package:stock_manager/Infrastructure/GraphQlService/service.dart'
    as graphql_service;
import 'package:graphql/client.dart';

class LoadAllCities extends Command<LoadAllCitiesEventData,
    LoadAllCitiesRawEventData, LoadAllCitiesResponse> {
  static final eventId = RegionApi.loadAllCities.index;
  static final eventName = RegionApi.loadAllCities.name;
  static final serviceId = Services.regionService.index;

  final GraphQLClient graphQl;

  LoadAllCities(this.graphQl) : super(eventId, eventName);

  @override
  Future<LoadAllCitiesResponse> handleEvent(
      LoadAllCitiesEventData eventData) async {
    final QueryOptions options = graphql_service.Options$Query$FindFirstCity();

    final result = await graphQl.query(options);

    if (result.hasException) {
      return LoadAllCitiesResponse(
          messageId: eventData.messageId,
          status: ServiceEventResponseStatus.error);
    }

    final json = result.data!['findFirstCity'] as List<dynamic>;

    final List<City> citties = cittiesFromJsonList(json);

    return LoadAllCitiesResponse(
        messageId: eventData.messageId, citties: citties);
  }

  @override
  Future<LoadAllCitiesResponse> handleRawEvent(
      LoadAllCitiesRawEventData eventData) {
    throw UnimplementedError();
  }
}

class LoadAllCitiesResponse extends ServiceEventResponse {
  final List<City> citties;
  LoadAllCitiesResponse(
      {required int messageId,
      this.citties = const [],
      ServiceEventResponseStatus status = ServiceEventResponseStatus.success})
      : super(messageId, status);
}

class LoadAllCitiesRawEventData extends RawServiceEventData {
  LoadAllCitiesRawEventData(
      {required int messageId, required String requesterId})
      : super(messageId, requesterId, LoadAllCities.eventId);
}

class LoadAllCitiesEventData
    extends ServiceEventData<LoadAllCitiesRawEventData> {
  LoadAllCitiesEventData(super.requesterId);

  @override
  LoadAllCitiesRawEventData toRawServiceEventData() {
    return LoadAllCitiesRawEventData(
        messageId: messageId, requesterId: requesterId);
  }
}

class LoadAllCitiesEvent extends ServiceEvent<LoadAllCitiesResponse> {
  LoadAllCitiesEvent({required super.eventData, super.callback})
      : super(LoadAllCities.eventId, LoadAllCities.eventName,
            LoadAllCities.serviceId);
}
