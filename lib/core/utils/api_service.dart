import 'package:dio/dio.dart';

 class  ApiService{
 final Dio _dio;
  ApiService(this._dio);
  Future<Map<String,dynamic>>getBook(String endPoint)async{
    Response response =await _dio.get('https://www.googleapis.com/books/v1/$endPoint');
    return response.data;
  }
}