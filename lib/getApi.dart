import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

//
//// ignore: camel_case_types
//class price {
//  String code;
//  String symbol;
//  String rate;
//  String description;
//
//  price({this.code, this.symbol, this.rate , this.description});

//  static List<price> getData(){
//    return<price>[
//      price('USD' , 'symbol' , '9.0987','United States Dollar'),
//      price('GBP' , 'symbol' , '9.0987','United States Dollar'),
//      price('EUR' , 'symbol' , '9.0987','United States Dollar'),
//    ];
//  }
//}





 Map myData = {};

Future<void> getData() async {
  String  URL =  "https://api.coindesk.com/v1/bpi/currentprice.json";
  Response response  = await get(URL);
  Map myData = jsonDecode(response.body);

  Map listDrop =  myData['bpi'];
  Map object = listDrop['USD'];

  //  you can used in DropdownButton
//  print(listDrop.keys);  //List<String> _list =

   String description = object['description'];
//  print(description);
//print(_list);

  print(object['code']);
}


//
//getData() async{
//    String  URL =  "https://api.coindesk.com/v1/bpi/currentprice.json";
//    Response response  = await get(URL);
//    Map myData = jsonDecode(response.body);
//
//    Map listDrop =  myData['bpi'];
//    Map object = listDrop['GBP'];
//    return object;
//  }

