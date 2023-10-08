import 'package:bookly_app/features/home/data/repositry/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../models/Items.dart';

part 'fetch_similar_books_state.dart';
class FetchSimilarBooksCubit extends Cubit<FetchSimilarBooksState> {
  FetchSimilarBooksCubit(this.homeRepo) : super(FetchSimilarBooksInitial());
 final HomeRepo homeRepo;

  Future<void>fetchSimilarBooks({required String category })async {
    emit(SimilarBooksLoadingState());
    var result= await homeRepo.fetchSimilarBooks(category:category);
    result.fold((failure){
      emit(SimilarBooksFailureState(failure.errorName));
    }, (success){
      emit(SimilarBooksSuccessState(success));//there is problem form me
    });
  }
}
