import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/managers/feature_books_cubit/feature_books_bloc_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../managers/feature_books_cubit/feature_books_bloc_cubit.dart';
import 'custom_books_item.dart';

class CustomFeatureListViewItem extends StatelessWidget {
  const CustomFeatureListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBooksBlocCubit,FeatureBooksBlocState >(
      builder: (context, state) {
        if (state is FeatureBooksSuccessState) {
          return SizedBox(
            height: MediaQuery
                .of(context)
                .size
                .height * 0.27,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return const CustomFeatureBooksItem();
              },
            ),
          );
        }
        else if(state is FeatureBooksFailureState){
          return  Center(child:Text(state.errMessage.toString(),style: Styles.titleStyle20,),);
        }
        else{
      return   const Center(child: CircularProgressIndicator());
        }
      }
    );
  }
}
