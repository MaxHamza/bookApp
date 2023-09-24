import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'best_seller_item.dart';
class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return SizedBox(
              height: MediaQuery.of(context).size.height * .19,
              child: GestureDetector(
                onTap: () {
                  //         Get.to(const DetailsView());
                  GoRouter.of(context).push('/DetailsView');
          } ,
                        child: const BestSellerItem()),
          );},

          );
        }
  }

