import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedImage extends StatelessWidget {
  const CachedImage({super.key,required this.imageUrl});
 final String?imageUrl;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(imageUrl: imageUrl??'https://cdn.elearningindustry.com/wp-content/uploads/2016/05/top-10-books-every-college-student-read-e1464023124869.jpeg',
      fit: BoxFit.fill,
      errorWidget: (context, url, error) =>const Icon(Icons.error),
    );
  }
}
