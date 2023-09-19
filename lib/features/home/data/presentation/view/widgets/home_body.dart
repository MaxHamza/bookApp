import 'package:bookly_app/features/home/data/presentation/view/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(vertical: 20.0,horizontal: 15),
      child: Column(
        children: [
          CustomAppBar(),
        ],
      ),
    );
  }
}
