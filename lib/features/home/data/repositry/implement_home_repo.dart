import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/utils/errors.dart';
import 'package:bookly_app/features/home/data/repositry/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../models/HomeModel.dart';

class ImpHomeRepo implements HomeRepo{
 final ApiService apiService;
 ImpHomeRepo(this.apiService);
  @override
  Future<Either<Failure,List<HomeModel>>>fetchNewsetBooks() async{
    try {
      var data = await apiService.getBook('volumes?Filtering=free-ebooks&Sorting=newest&q=subject:programming');
      List<HomeModel>bookItems = [];
      for (var items in data['items']) {
        bookItems.add(items);
      }
      return right(bookItems);
    }
    catch(e){
     if(e is DioException){
     return left(ServerError.response(e));
     }
    return left(ServerError(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<HomeModel>>> fetchFeaturedBooks() async{
    try {
      var data = await ApiService(Dio()).getBook('volumes?Filtering=free-ebooks&q=subject:programming');
      List<HomeModel>bookItems = [];
      for (var items in data['items']) {
        var homeModel= HomeModel.fromJson(items);
        bookItems.add(homeModel);
      }
      return right(bookItems);
    }
    catch(e){
      if(e is DioException){
        return left(ServerError.response(e));
      }
      return left(ServerError(e.toString()));
    }
  }
}