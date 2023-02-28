

import 'package:stock_manager/Infrastructure/services_store.dart';
import 'package:stock_manager/Types/i_database.dart';

const _requesterId = 'DepositBloc';


  Future<void> searchRecords(SearchWrapper searchParams)  async {

    final data = SearchProductEventData(
      requesterId: _requesterId,
      searchParams: searchParams,
    );

    final event = SearchProductEvent(
      eventData: data,
    );

    ServicesGateway.instance().sendEvent(event);
    
}