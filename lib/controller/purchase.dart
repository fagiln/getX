import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:latihantsa/controller/demoController.dart';
import 'package:latihantsa/model/product.dart';

class Purchase extends GetxController {
  var product = <Product>[].obs;
  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    await Future.delayed(Duration(seconds: 1));
    // call from server end
    var serverResponse = [
      Product(
          1,
          "Item Pertama",
          "aby",
          "Produk ini di jual dengna harga yang murah da todak dapat di kemabalikan",
          999.9),
      Product(
          1,
          "Item Pertama",
          "aby",
          "Produk ini di jual dengna harga yang murah da todak dapat di kemabalikan",
          999.9),
      Product(
          1,
          "Item Pertama",
          "aby",
          "Produk ini di jual dengna harga yang murah da todak dapat di kemabalikan",
          999.9),
      Product(
          1,
          "Item Pertama",
          "aby",
          "Produk ini di jual dengna harga yang murah da todak dapat di kemabalikan",
          999.9),
      Product(
          1,
          "Item Pertama",
          "aby",
          "Produk ini di jual dengna harga yang murah da todak dapat di kemabalikan",
          999.9),
      Product(
          1,
          "Item Pertama",
          "aby",
          "Produk ini di jual dengna harga yang murah da todak dapat di kemabalikan",
          999.9),
      Product(
          1,
          "Item Pertama",
          "aby",
          "Produk ini di jual dengna harga yang murah da todak dapat di kemabalikan",
          999.9),
      Product(
          1,
          "Item Pertama",
          "aby",
          "Produk ini di jual dengna harga yang murah da todak dapat di kemabalikan",
          999.9),
    ];
    product.value = serverResponse;
  }
}
