import 'dart:convert';

import 'package:ar_app/api.dart';
import 'package:http/http.dart' as http;

class AllCategoriesService {
  Future<List<dynamic>> getAllCategories() async{
    http.Response response = await Api().get(url:'https://a-eye-fj81.onrender.com/categories/');
    List<dynamic> data =jsonDecode(response.body);
    return data;
    }
    
  
}