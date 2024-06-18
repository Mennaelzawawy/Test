import 'dart:convert';

import 'package:ar_app/Models/item_model.dart';
import 'package:ar_app/api.dart';
import 'package:http/http.dart' as http;

class AllProductsService {
  Future<List<ItemModel>> getAllProducts() async{
    http.Response response = await Api().get(url:'https://a-eye-fj81.onrender.com/products/');
    List<dynamic> data =jsonDecode(response.body);
    List<ItemModel> productList =[];
    for (int i=0;i<data.length;i++){
      productList.add(
        ItemModel.fromJson(data[i]),
      );
    }
    return productList;
  }
}