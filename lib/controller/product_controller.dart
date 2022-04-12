import 'package:get/get.dart';
import 'package:getwithoutapi/model/items.dart';
import 'package:getwithoutapi/model/products.dart';
import 'package:getwithoutapi/services/api.dart';

class ProductContoller extends GetxController {
  var productList = List<Items>.empty().obs;

  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(Duration(seconds: 1));
    var productFromapi = await ApiServices.FetchData();
    productList.clear();

    productList.addAll(productFromapi);
  }
}
