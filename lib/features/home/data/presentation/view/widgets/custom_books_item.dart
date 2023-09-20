import 'package:flutter/material.dart';

import '../../../../../../core/utils/assets.dart';

class CustomFeatureBooksItem extends StatelessWidget {
  const CustomFeatureBooksItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: AspectRatio(
        aspectRatio:2.7/4,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            image: DecorationImage(
                image: AssetImage(Images.test),
                fit: BoxFit.cover
            ),
          ),
        ),
      ),
    );
  }
}
