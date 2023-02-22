import 'package:flutter_test/flutter_test.dart';
import 'package:stock_manager/DataModels/models.dart';
import 'package:stock_manager/Ui/Editors/Models/order_mode.dart';

void main() {

  Product mockProduct() {
    Product product = Product.defaultInstance();
    product.name = 'test';
    product.reference = 'test';
    product.buyingPrice = 10;
    product.sellingPrice = 10;
    product.totalQuantity = 10;
    product.models = {
      "0":
          ProductModel(color: 'red', sizes: {'1': ModelSize('S', 10)}, id: '1'),
    };
    return product;
  }

  RecordProduct mockOrderProduct(Product product){
    RecordProduct orderProduct = RecordProduct.defaultInstance();
    orderProduct.reference = product.reference;
    orderProduct.colorId = product.models.keys.first;
    orderProduct.sizeId = product.models.values.first.sizes.keys.first;
    orderProduct.sellingPrice = product.sellingPrice;
    return orderProduct;
  }

  test("order calculations", () async {
    Product product = mockProduct();
    RecordProduct orderProduct = mockOrderProduct(product);
    Order order = Order.defaultInstance();

    OrderProductEditorMode productEditor = OrderProductEditorMode.createModeInstance(orderProduct, order);
    OrderFormEditorMode orderEditor = OrderFormEditorMode.createModeInstance(order);

    orderEditor.setDeposit('100');
    orderEditor.setDeliveryCost('100');
    productEditor.appendToOrder();
    productEditor.appendToOrder();

    final actual = {
      'total': order.totalPrice,
      'deposit': order.deposit,
      'deliveryCost': order.deliveryCost,
      'remaining': order.remainingPayement,
    };

    final expected  = {
      'total': 120,
      'deposit': 100,
      'deliveryCost': 100,
      'remaining': 20,
    
    };
    

    expect(actual, expected);
  });
}
