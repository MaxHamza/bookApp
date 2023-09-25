import 'package:flutter/material.dart';
import 'custom_books_item.dart';

class CustomFeatureListViewItem extends StatelessWidget {
  const CustomFeatureListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height:MediaQuery.of(context).size.height*0.27,
      child: ListView.builder(
        physics:const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const CustomFeatureBooksItem();
        },
      ),
    );
  }
}
