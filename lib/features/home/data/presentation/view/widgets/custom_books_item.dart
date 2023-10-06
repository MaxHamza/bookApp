import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'cached_image.dart';


class CustomFeatureBooksItem extends StatelessWidget {
   CustomFeatureBooksItem({super.key,required this.imageUrl});
   String ?imageUrl;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: AspectRatio(
        aspectRatio:2.7/4,
        child: CachedImage(imageUrl: imageUrl,)
      ),
    );
  }
}
