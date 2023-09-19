import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(Images.logo,height:18.0),
        IconButton(onPressed: (){}, icon:const Icon(Icons.search_rounded,size: 24,)),
      ],
    );
  }
}
