import 'package:bookly_app/features/home/data/models/Items.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/utils/errors.dart';

abstract class HomeRepo{
  Future<Either<Failure,List<Items>>>fetchNewestBooks();
  Future<Either<Failure,List<Items>>>fetchFeaturedBooks();
  Future<Either<Failure,List<Items>>>fetchSimilarBooks({required String category});
}