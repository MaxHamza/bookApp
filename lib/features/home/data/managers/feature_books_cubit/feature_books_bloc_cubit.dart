import 'package:flutter_bloc/flutter_bloc.dart';
import '../../repositry/home_repo.dart';
import 'feature_books_bloc_state.dart';
class FeatureBooksBlocCubit extends Cubit<FeatureBooksBlocState> {
  FeatureBooksBlocCubit(this.homeRepo) : super(FeatureBooksBlocInitial());
 final HomeRepo homeRepo;//we use home repo replace in impHomeRepo to make code more reusable;
  Future<void>featuredBooks()async {
  emit(FeatureBooksLoadingState());
 var result= await homeRepo.fetchFeaturedBooks();
 result.fold((failure){
   emit(FeatureBooksFailureState(failure.errorName));
 }, (success){
   emit(FeatureBooksSuccessState(success));//there is problem form me
 });
  }
}
