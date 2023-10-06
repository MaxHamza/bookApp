import 'package:bookly_app/features/home/data/models/Items.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/utils/errors.dart';
import '../models/HomeModel.dart';

abstract class HomeRepo{
  Future<Either<Failure,List<HomeModel>>>fetchNewsetBooks();
  Future<Either<Failure,List<Items>>>fetchFeaturedBooks();
}