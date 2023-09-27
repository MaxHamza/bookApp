import 'package:bookly_app/features/home/data/repositry/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../models/home_model.dart';
part 'neweset_book_state.dart';

class NewesetBookCubit extends Cubit<NewesetBookState> {
  NewesetBookCubit(this.homeRepo) : super(NewesetBookInitial());
final HomeRepo homeRepo;
  Future<void>fetchNewestBooks()async{
    emit(NewesetBookLoadingState());
    var result=await homeRepo.fetchNewsetBooks();
    result.fold((failure){
     emit(NewesetBookFailureState(failure.errorName));
    }, (success){
    emit(NewesetBookSuccessState(success));
    });
  }
}
