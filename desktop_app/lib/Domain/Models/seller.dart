
import 'package:stock_manager/Application/Utility/utility.dart';

class Seller {
  int sellerCode;
  String name;
  int phone;
  String imageUrl;

  Seller(
      {required this.sellerCode,
      required this.name,
      required this.phone,
      required this.imageUrl});

  Seller copyWith({
    String? name,
    int? phone,
    String? imageUrl,
  }) {
    return Seller(
      sellerCode: sellerCode,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  static Seller defaultInstance() {
    return Seller(
      sellerCode: Utility.getTimeStamp(),
      name: '',
      phone: 0,
      imageUrl: '',
    );
  }
}


Seller sellerFromJson(Map<String, dynamic> json) {
  return Seller(
    sellerCode: json[_SellerFields.sellerCode.name],
    name: json[_SellerFields.name.name],
    phone: int.tryParse(json[_SellerFields.phone.name]) ?? -1,
    imageUrl: json[_SellerFields.imageUrl.name],
  );
}

List<Seller> sellersFromJsonList(List<dynamic> json) {
  return json.map((e) => sellerFromJson(e)).toList();
}


enum _SellerFields {
  sellerCode ,
  name,
  phone,
  imageUrl,
}

extension _ApiSellerFields on _SellerFields {
  String get name {
    switch (this) {
      case _SellerFields.sellerCode:
        return 'seller_id';
      case _SellerFields.name:
        return 'seller_name';
      case _SellerFields.phone:
        return 'seller_phone';
      case _SellerFields.imageUrl:
        return 'picture';
    }
  }
}