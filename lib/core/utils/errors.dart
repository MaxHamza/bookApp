import 'package:dio/dio.dart';

abstract class Failure{
  String errorName;
  Failure(this.errorName);
}
class ServerError extends Failure{
  ServerError(String errorName) : super(errorName);

  factory ServerError.response(DioException dioException){
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
     return ServerError('Connection Time out,please try again');
      case DioExceptionType.sendTimeout:
        return ServerError('Send Time out,please try again');
      case DioExceptionType.receiveTimeout:
        return ServerError('Receive Time out,please try again');
      case DioExceptionType.badCertificate:
        return ServerError('your connection is not private,please try again');
      case DioExceptionType.badResponse:
          return ServerError.fromResponse(dioException.response!.hashCode,dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerError('your connection is cancelled,please try later');
      case DioExceptionType.connectionError:
        return ServerError('there is an error in your connection ,please try later');
      case DioExceptionType.unknown:
        return ServerError('please try later');
    }
  }
  factory ServerError.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      //final result = json.decode(response.body.toString());
        return ServerError(response['error']['errors'][0]['message']);
      }
    else if (statusCode == 404) {
      return ServerError('Your request is not found');
    } else if (statusCode == 500) {
      return ServerError('Internal server error, please try later');
    } else {
      return ServerError('Oops, there was an error, please try again');
    }
  }

}