import 'package:stock_manager/Types/events_keys_enum.dart';

abstract class DepositEmitter{

  static void emitDepositEvent(DepositEvents events,[Object? data]){
    
  }

}

abstract class PurchaseEmitter{

  static void emitPurchaseEvent(PurchaseEvents events,[Object? data]){
  }

}

abstract class OrderEmiter{

  static void emitOrderEvent(OrderEvents events,[Object? data]){

  }

}