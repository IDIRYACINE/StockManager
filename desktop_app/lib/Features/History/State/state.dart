
import 'package:stock_manager/Domain/Models/transaction.dart';

class HistoryState{
  final List<Record> records;


  HistoryState({required this.records});

  factory HistoryState.initial() {
    return HistoryState(records: []);
  }

  Record getRecord(int index){
    return records[index];
  }


}