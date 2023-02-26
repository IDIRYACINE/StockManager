import 'package:stock_manager/Application/Utility/utility.dart';
import 'package:stock_manager/DataModels/special_enums.dart';

class Record {
  Record(
      {required this.payementType,
      required this.payementTypeIndex,
      required this.timeStamp,
      required this.date,
      required this.remainingPayement,
      required this.totalQuantity,
      required this.totalPrice,
      required this.products,
      required this.sellerName,
      required this.totalDeposit,
      required this.customer,
      required this.sellerId,
      required this.cityId,
      this.city,
      this.address,
      this.phoneNumber});

  DateTime date;
  int timeStamp;
  int totalQuantity;
  String sellerName;
  double totalPrice;
  int sellerId;
  int cityId;
  double remainingPayement;
  double totalDeposit;
  String payementType;
  String customer;
  int? phoneNumber;
  String? city;
  String? address;
  int payementTypeIndex;
  Map<String, RecordProduct> products;

  // we use this as an identifier to query transactions of the same payment
  static int purchaseTimeStamp = 0;
  static void generatePurchaseId() {
    purchaseTimeStamp = DateTime.now().millisecondsSinceEpoch;
  }

  static int depositTimeStamp = 0;
  static void generateDepositId() {
    depositTimeStamp = DateTime.now().millisecondsSinceEpoch;
  }

  // dart Record copyWith
  Record copyWith(
      {String? payementType,
      int? payementTypeIndex,
      int? timeStamp,
      DateTime? date,
      double? remainingPayement,
      int? totalQuantity,
      double? totalPrice,
      String? sellerName,
      Map<String, RecordProduct>? products,
      String? customer,
      double? totalDeposit,
      int? phoneNumber,
      String? city,
      int? cityId,
      int? sellerId,
      String? address}) {
    return Record(
        date: date ?? this.date,
        payementType: payementType ?? this.payementType,
        timeStamp: timeStamp ?? this.timeStamp,
        totalQuantity: totalQuantity ?? this.totalQuantity,
        remainingPayement: remainingPayement ?? this.remainingPayement,
        payementTypeIndex: payementTypeIndex ?? this.payementTypeIndex,
        totalPrice: totalPrice ?? this.totalPrice,
        products: products ?? this.products,
        sellerName: sellerName ?? this.sellerName,
        totalDeposit: totalDeposit ?? this.totalDeposit,
        customer: customer ?? this.customer,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        city: city ?? this.city,
        sellerId: sellerId ?? this.sellerId,
        cityId: cityId ?? this.cityId,
        address: address ?? this.address);
  }

  static Record defaultInstance({
    required PaymentTypes paymentType,
    required int timeStamp,
  }) {
    return Record(
        payementType: paymentType.name,
        date: Utility.getDate(),
        timeStamp: Record.purchaseTimeStamp,
        remainingPayement: 0.0,
        totalQuantity: 0,
        payementTypeIndex: paymentType.index,
        totalPrice: 0.0,
        products: {},
        sellerName: '',
        totalDeposit: 0.0,
        customer: '',
        cityId: 0,
        sellerId: 0);
  }

  static defaultDepositInstance() {
    return Record(
        payementType: PaymentTypes.deposit.name,
        date: Utility.getDate(),
        timeStamp: Utility.getTimeStamp(),
        remainingPayement: 0.0,
        totalQuantity: 0,
        payementTypeIndex: PaymentTypes.deposit.index,
        totalPrice: 0.0,
        products: {},
        sellerName: '',
        totalDeposit: 0.0,
        customer: '',
        cityId: 0,
        sellerId: 0);
  }

  static defaultPurchaseInstance() {
    return Record(
        payementType: PaymentTypes.payement.name,
        date: Utility.getDate(),
        timeStamp: Utility.getTimeStamp(),
        remainingPayement: 0.0,
        totalQuantity: 0,
        payementTypeIndex: PaymentTypes.payement.index,
        totalPrice: 0.0,
        products: {},
        sellerName: '',
        totalDeposit: 0.0,
        customer: '',
        cityId: 0,
        sellerId: 0);
  }
}

class RecordProduct {
  RecordProduct({
    required this.product,
    required this.color,
    required this.size,
    required this.reference,
    required this.sellingPrice,
    required this.deposit,
    required this.sizeId,
    required this.colorId,
    required this.timeStamp,
    required this.remainingPayement,
  });

  String reference;
  double deposit;
  String product;
  String size;
  String color;
  String sizeId;
  double remainingPayement;
  String colorId;
  double sellingPrice;
  String timeStamp;

  static RecordProduct defaultInstance() {
    return RecordProduct(
      product: '',
      color: '',
      size: '',
      reference: '',
      sellingPrice: 0,
      deposit: 0,
      colorId: '',
      sizeId: '',
      timeStamp: Utility.getTimeStamp().toString(),
      remainingPayement: 0,
    );
  }

  RecordProduct copyWith({
    String? product,
    String? productColor,
    String? productSize,
    String? reference,
    double? sellingPrice,
    double? deposit,
    double? remainingPayement,
    String? productSizeId,
    String? productColorId,
    String? timeStamp,
  }) {
    return RecordProduct(
      product: product ?? this.product,
      color: productColor ?? color,
      size: productSize ?? size,
      reference: reference ?? this.reference,
      sellingPrice: sellingPrice ?? this.sellingPrice,
      deposit: deposit ?? this.deposit,
      colorId: productColorId ?? colorId,
      sizeId: productSizeId ?? sizeId,
      timeStamp: timeStamp ?? this.timeStamp,
      remainingPayement: remainingPayement ?? this.remainingPayement,
    );
  }
}

Record recordFromJson(Map<String,dynamic> json){
  return Record(
    payementType: json['payementType'],
    payementTypeIndex: json['payementTypeIndex'],
    timeStamp: json['timeStamp'],
    date: DateTime.parse(json['date']),
    remainingPayement: json['remainingPayement'],
    totalQuantity: json['totalQuantity'],
    totalPrice: json['totalPrice'],
    products: json['products'],
    sellerName: json['sellerName'],
    totalDeposit: json['totalDeposit'],
    customer: json['customer'],
    sellerId: json['sellerId'],
    cityId: json['cityId'],
    city: json['city'],
    address: json['address'],
    phoneNumber: json['phoneNumber'],
  );
}

List<Record> recordsFromJsonList(List<dynamic> json){
  return json.map((e) => recordFromJson(e)).toList();
}