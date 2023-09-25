import 'package:bookly_app/features/home/data/models/home_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/utils/errors.dart';

abstract class HomeRepo{
  Future<Either<Failure,HomeModel>>fetchBestSellerBooks();
  Future<Either<Failure,HomeModel>>fetchFeaturedBooks();
}