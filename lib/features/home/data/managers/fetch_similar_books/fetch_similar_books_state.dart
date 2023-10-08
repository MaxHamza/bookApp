part of 'fetch_similar_books_cubit.dart';


abstract  class FetchSimilarBooksState {
  const FetchSimilarBooksState();
}

class FetchSimilarBooksInitial extends FetchSimilarBooksState {}
class SimilarBooksLoadingState extends FetchSimilarBooksState {}
class SimilarBooksFailureState extends FetchSimilarBooksState {
  const SimilarBooksFailureState(this.errMessage);
  final String errMessage;
}
class SimilarBooksSuccessState extends FetchSimilarBooksState {
  final List<Items> similarBookSuccess;
  const SimilarBooksSuccessState(this.similarBookSuccess);
}
