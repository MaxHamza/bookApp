import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/utils/errors.dart';
import 'package:bookly_app/features/home/data/models/Items.dart';
import 'package:bookly_app/features/home/data/repositry/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class ImpHomeRepo implements HomeRepo{
 final ApiService apiService;
 ImpHomeRepo(this.apiService);
  @override
  Future<Either<Failure, List<Items>>> fetchNewestBooks() async{
    try {
      var data = await ApiService(Dio()).getBook('volumes?Sorting=newest&q=programming&Filtering=free-ebooks');
      List<Items>bookItems=[];
      for (var items in data['items']) {
        var homeModel= Items.fromJson(items);
        bookItems.add(homeModel);
      }
      return right(bookItems);
    }
    catch(e) {
      if (e is DioException) {
        return left(ServerError.response(e));
      }
      else {
        return left(ServerError(e.toString()));
      }
    }
  }
  @override
  Future<Either<Failure, List<Items>>> fetchFeaturedBooks() async{
    try {
      var data = await ApiService(Dio()).getBook('volumes?q=computer science&Filtering=free-ebooks');
      List<Items>bookItems=[];
      for (var items in data['items']) {
        var homeModel= Items.fromJson(items);
        bookItems.add(homeModel);
      }
      return right(bookItems);
    }
    catch(e) {
      if (e is DioException) {
        return left(ServerError.response(e));
      }
      else {
        return left(ServerError(e.toString()));
      }
    }
  }
 @override
 Future<Either<Failure, List<Items>>> fetchSimilarBooks({required String category}) async{
   try {
     var data = await ApiService(Dio()).getBook('volumes?Sorting=relevance&q=computer science&Filtering=free-ebooks');
     List<Items>bookItems=[];
     for (var items in data['items']) {
       var homeModel= Items.fromJson(items);
       bookItems.add(homeModel);
     }
     return right(bookItems);
   }
   catch(e) {
     if (e is DioException) {
       return left(ServerError.response(e));
     }
     else {
       return left(ServerError(e.toString()));
     }
   }
 }
}