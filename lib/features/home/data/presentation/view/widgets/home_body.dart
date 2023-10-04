import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/presentation/view/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/data/presentation/view/widgets/custom_List_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../managers/feature_books_cubit/feature_books_bloc_cubit.dart';
import 'list_view_best_seller.dart';

class  HomeBody extends StatefulWidget {

  @override
  State<StatefulWidget> createState()=>homeBody();
}

  class homeBody extends State<HomeBody>{
  void initState() {
    BlocProvider.of<FeatureBooksBlocCubit>(context).featuredBooks();
    super.initState();
  }
    @override
    Widget build(BuildContext context) {
      return const Padding(
        padding: EdgeInsets.only(top: 30, bottom: 20, left: 24, right: 24),
        child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [ SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppBar(),
                  SizedBox(height: 10),
                  CustomFeatureListViewItem(),
                  SizedBox(height: 30,),
                  Text('Best seller', style: Styles.titleStyle20),
                  SizedBox(height: 20,),
                ],
              ),
            ),
              SliverFillRemaining(
                child: BestSellerListView(),
              )
            ]
        ),
      );
    }
}