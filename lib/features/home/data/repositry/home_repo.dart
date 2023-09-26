import 'package:bookly_app/features/home/data/models/home_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/utils/errors.dart';

abstract class HomeRepo{
  Future<Either<Failure,List<HomeModel>>>fetchNewsetBooks();
  Future<Either<Failure,List<HomeModel>>>fetchFeaturedBooks();
}