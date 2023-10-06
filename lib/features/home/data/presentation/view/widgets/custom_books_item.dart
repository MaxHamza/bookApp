import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


class CustomFeatureBooksItem extends StatelessWidget {
   CustomFeatureBooksItem({super.key,required this.imageUrl});
   String ?imageUrl;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: AspectRatio(
        aspectRatio:2.7/4,
        child: CachedNetworkImage(imageUrl: imageUrl??'https://cdn.elearningindustry.com/wp-content/uploads/2016/05/top-10-books-every-college-student-read-e1464023124869.jpeg',
        fit: BoxFit.fill,
          errorWidget: (context, url, error) =>const Icon(Icons.error),
        )
      ),
    );
  }
}
