import 'dart:developer';

import 'package:flutter_first/constants/ApiConstants.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_first/model/products_model.dart';

class ApiService{

  Future<List<ProductsModel>?> getProducts() async{
    try{
      var url = Uri.parse(ApiConstants.baseUrl+ApiConstants.userEndpoint);
      var response = await http.get(url);
      if(response.statusCode==200){
        List<ProductsModel> model = productsModelFromJson(response.body);
        return model;
      }
    }catch (e){
      log(e.toString());
    }
  }
}