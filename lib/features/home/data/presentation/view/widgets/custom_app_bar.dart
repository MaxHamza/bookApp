import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/utils/routers.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(Images.logo,height:18.0),
        IconButton(onPressed: (){
          GoRouter.of(context).push(AppRouter.searchBook);
        }, icon:const Icon(Icons.search_rounded,size: 24,)),
      ],
    );
  }
}
