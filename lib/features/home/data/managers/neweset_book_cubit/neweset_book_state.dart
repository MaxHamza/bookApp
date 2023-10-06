part of 'neweset_book_cubit.dart';


abstract class NewesetBookState {
  const NewesetBookState();
}

class NewesetBookInitial extends NewesetBookState {}
class NewesetBookLoadingState extends NewesetBookState {}
class NewesetBookSuccessState extends NewesetBookState {
 final List<Items>data1;
 const NewesetBookSuccessState(this.data1);
}
class NewesetBookFailureState extends NewesetBookState {
  final String errMessage;
 const NewesetBookFailureState(this.errMessage);
}