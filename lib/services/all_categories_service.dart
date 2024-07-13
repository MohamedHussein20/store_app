import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class AllCategoriesService {
  Future<List<dynamic>> getAllCategories() async {
     List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products/categories');

    List<ProductModel> productsList = [];
    for (var i = 0; i < data.length; i++) {
      productsList.add(
        ProductModel.fromJson(data[i]),
      );
    }
    return productsList;
  }
  }

