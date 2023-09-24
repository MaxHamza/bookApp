import 'package:bookly_app/features/home/data/presentation/view/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/styles.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        AspectRatio(
          aspectRatio:2.5/4,
          child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(image:AssetImage(Images.test),
                    fit: BoxFit.fill,))),
        ),
        const SizedBox(width: 15,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const  SizedBox(height: 20,),
              Text('Harry Potter and the Goblet of Fire ',maxLines: 2,style:Styles.titleStyle20.copyWith(fontFamily:"GT"),
                overflow:TextOverflow.ellipsis ,),
              const SizedBox(height: 3,),
              const  Text('3k Rowling',textAlign: TextAlign.start,style:Styles.titleStyle14),
              const SizedBox(height: 3),
              Text('19.99 €',style:Styles.titleStyle20.copyWith(fontWeight: FontWeight.bold)),
             const BookRating(mainAxisAlignment1: MainAxisAlignment.end,)

            ],
          ),
        )
      ],
    );
  }
}
