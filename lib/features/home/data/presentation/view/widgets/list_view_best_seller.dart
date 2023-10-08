import 'package:bookly_app/features/home/data/presentation/view/widgets/failure_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../managers/neweset_book_cubit/neweset_book_cubit.dart';
import 'best_seller_item.dart';
class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewesetBookCubit,NewesetBookState>(
  builder: (context, state){
    if(state is NewesetBookSuccessState) {
      return ListView.builder(
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .19,
            child: GestureDetector(
                onTap: () {
                  GoRouter.of(context).push('/DetailsView',extra:state.data1[index]);
                },
                child:BestSellerItem(items:state.data1[index],)),
          );
        },
        itemCount: state.data1.length,
      );
    }
    else if(state is NewesetBookFailureState){
      return FailureWidget(state: state);
    }
    else{
      return const Center(child: CircularProgressIndicator(),);
    }
  },
);
        }
  }

