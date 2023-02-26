


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
