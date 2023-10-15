import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/home/data/managers/feature_books_cubit/feature_books_bloc_state.dart';
import 'package:bookly_app/features/home/data/presentation/view/widgets/failure_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/utils/routers.dart';
import '../../../../../search/presentation/view/widgets/search_book_body.dart';
import '../../../managers/feature_books_cubit/feature_books_bloc_cubit.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(Images.logo,height:18.0),
        BlocBuilder<FeatureBooksBlocCubit, FeatureBooksBlocState>(
  builder: (context, state) {
    if(state is FeatureBooksSuccessState) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SafeArea(child: IconButton(onPressed: () {
            showSearch(
              context: context, delegate: CustomSearchDelegate(items: state.featureBookSuccess),);
          }, icon: const Icon(Icons.search_rounded))),
          //ListViewSearchBooks(state:,)
        ],
    );
    }
    else if(state is FeatureBooksFailureState){
     return FailureWidget(state: state.errMessage,);
    }
    else{
   return Center(child: Image.asset(Images.logo,height:18.0),);
    }
  },
),
      ],
    );
  }
}
