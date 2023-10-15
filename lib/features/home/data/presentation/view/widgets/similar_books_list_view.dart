import 'package:bookly_app/features/home/data/managers/fetch_similar_books/fetch_similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'failure_widget.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<FetchSimilarBooksCubit ,FetchSimilarBooksState>(
  builder: (context, state) {
    if(state is SimilarBooksSuccessState) {
      return Expanded(
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return SizedBox(
              height: MediaQuery.of(context).size.height *.15,
              child: AspectRatio(
                aspectRatio: 2.6 / 4,
                child: Padding(
                  padding: const EdgeInsets.only(right: 5.0),
                  child:GestureDetector(
                    onTap: (){
                      GoRouter.of(context).push('/DetailsView',extra:state.similarBookSuccess[index]);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                              Radius.circular(8)),
                          image: DecorationImage(image: NetworkImage(state.similarBookSuccess[index].volumeInfo?.imageLinks?.thumbnail??
                              'http//cdn.elearningindustry.com/wp-content/uploads/2016/05/top-10-books-every-college-student-read-e1464023124869.jpeg'),
                            fit: BoxFit.fill,))),
                )),
              ),
            );
          },
          itemCount: 10,
        ),
      );
    }
    else if(state is SimilarBooksFailureState){
     return FailureWidget(state: state);
    }
    else{
      return const Center(child: CircularProgressIndicator(),);
    }
  },
);
  }
}
