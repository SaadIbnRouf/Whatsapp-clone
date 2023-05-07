import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:whatsapp/models/api_data_response_model.dart';

class HttpApiModel extends StatelessWidget {
  HttpApiModel({Key? key}) : super(key: key) {
    getHttp();
  }
  final dio = Dio();
  var value;

  void getHttp() async {
    final response = await dio.get('https://ifconfig.co/json');
    value = response.data;
    ApiDataResponseModel responseData = ApiDataResponseModel.fromJson(value);
    responseData.userAgent?.product;
    print(responseData.userAgent?.version);
    var jsonData = responseData.toJson();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Working'),
    );
  }
}
