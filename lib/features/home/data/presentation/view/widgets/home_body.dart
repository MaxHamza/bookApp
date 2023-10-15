import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/presentation/view/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/data/presentation/view/widgets/custom_List_view_item.dart';
import 'package:flutter/material.dart';
import '../../../models/Items.dart';
import 'list_view_best_seller.dart';

class  HomeBody extends StatelessWidget{
  const HomeBody({super.key});
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
                  Text('Newest Books', style: Styles.titleStyle20),
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