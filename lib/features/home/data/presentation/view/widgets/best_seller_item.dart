import 'package:bookly_app/features/home/data/models/Items.dart';
import 'package:bookly_app/features/home/data/presentation/view/widgets/book_rating.dart';
import 'package:bookly_app/features/home/data/presentation/view/widgets/cached_image.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/utils/styles.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key, this.items});
 final Items ?items;

  @override
  Widget build(BuildContext context) {
    return Padding(padding:const EdgeInsets.only(bottom: 7),child:Row(
      children:[
        AspectRatio(
          aspectRatio:2.5/4,
          child: CachedImage(imageUrl: items?.volumeInfo?.imageLinks?.thumbnail,),
        ),
        const SizedBox(width: 15,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
               const SizedBox(height: 20,),
              Text(items!.volumeInfo!.title!,maxLines: 2,style:Styles.titleStyle20.copyWith(fontFamily:"GT"),
                overflow:TextOverflow.ellipsis ,),
              const SizedBox(height: 3,),
                Text(items!.volumeInfo!.authors![0],textAlign: TextAlign.start,style:Styles.titleStyle14),
              const SizedBox(height: 3),
              Text('Free',style:Styles.titleStyle20.copyWith(fontWeight: FontWeight.bold)),
             const BookRating(mainAxisAlignment1: MainAxisAlignment.end,averageRating:0,countRating:0,),
            ],
          ),
        ),
      ],
    ));
  }
}
