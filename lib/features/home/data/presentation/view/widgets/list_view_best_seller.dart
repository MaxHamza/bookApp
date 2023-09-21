import 'package:flutter/material.dart';

import 'best_seller_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {

    return  ListView.builder(
      padding: EdgeInsets.zero,
      physics:const NeverScrollableScrollPhysics(),
      itemBuilder:(context,index) {
       return SizedBox(
          height: MediaQuery.of(context).size.height * .19,
          child: const BestSellerItem(),
        );
      },
      itemCount: 10,
    );
  }
}
