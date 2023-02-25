import 'package:stock_manager/Application/Utility/utility.dart';
import 'package:stock_manager/DataModels/metadata.dart';
import 'package:stock_manager/Domain/Models/transaction.dart';



class Customer {
  Customer({
    required this.name,
    this.phoneNumber,
    required this.address,
    required this.city,
    required this.postalCode,
  });

  String name;
  int? phoneNumber;
  String address;
  String city;
  int postalCode;
}

class Order {
  Order({
    required this.timeStamp,
    required this.date,
    required this.products,
    required this.status,
    required this.quantity,
    required this.sellerName,
    required this.customerName,
    required this.phoneNumber,
    required this.address,
    required this.city,
    required this.postalCode,
    required this.deposit,
    required this.totalPrice,
    required this.deliverToHome,
    required this.deliveryCost,
    required this.remainingPayement,
  });

  DateTime date;

  int timeStamp;
  String sellerName;
  Map<String, RecordProduct> products;
  int quantity;
  double deposit;
  String status;
  double remainingPayement;
  double deliveryCost;
  bool deliverToHome;
  double totalPrice;
  String customerName;
  int phoneNumber;
  String address;
  String city;
  int postalCode;

  static Order defaultInstance() {
    return Order(
        products: {},
        status: OrderStatus.confirmed.name,
        quantity: 0,
        sellerName: '',
        customerName: '',
        phoneNumber: 0,
        address: '',
        city: '',
        postalCode: 0,
        deposit: 0,
        totalPrice: 0,
        deliverToHome: true,
        deliveryCost: 0,
        timeStamp: Utility.getTimeStamp(),
        date: Utility.getDate(),
        remainingPayement: 0);
  }

  Map<String, RecordProduct> _copyProducts() {
    Map<String, RecordProduct> copyProducts = {};

    products.forEach((key, value) {
      copyProducts[key] = value.copyWith();
    });

    return copyProducts;
  }

  Order copyWith({
    Map<String, RecordProduct>? products,
    DateTime? date,
    String? status,
    int? quantity,
    int? timeStamp,
    String? sellerName,
    String? customerName,
    int? phoneNumber,
    String? address,
    String? city,
    int? postalCode,
    double? deposit,
    double? sellingPrice,
    bool? deliverToHome,
    double? deliveryCost,
    double? remainingPayement,
  }) {
    return Order(
      products: products ?? _copyProducts(),
      status: status ?? this.status,
      quantity: quantity ?? this.quantity,
      sellerName: sellerName ?? this.sellerName,
      customerName: customerName ?? this.customerName,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      address: address ?? this.address,
      city: city ?? this.city,
      postalCode: postalCode ?? this.postalCode,
      deposit: deposit ?? this.deposit,
      totalPrice: sellingPrice ?? totalPrice,
      deliverToHome: deliverToHome ?? this.deliverToHome,
      deliveryCost: deliveryCost ?? this.deliveryCost,
      timeStamp: timeStamp ?? this.timeStamp,
      date: date ?? this.date,
      remainingPayement: remainingPayement ?? this.remainingPayement,
    );
  }
}


class CustomerDataHolder {
  CustomerDataHolder({
    required this.name,
    required this.phoneNumber,
    required this.address,
    required this.city,
    required this.postalCode,
  });

  String name;
  int phoneNumber;
  String address;
  String city;
  int postalCode;

  static CustomerDataHolder defaultInstance() {
    return CustomerDataHolder(
        name: '',
        phoneNumber: 0,
        address: '',
        city: '',
        postalCode: 0);
  }

  CustomerDataHolder copyWith({
    String? name,
    int? phoneNumber,
    String? address,
    String? city,
    int? postalCode,
  }) {
    return CustomerDataHolder(
      name: name ?? this.name,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      address: address ?? this.address,
      city: city ?? this.city,
      postalCode: postalCode ?? this.postalCode,
    );
  }
}
