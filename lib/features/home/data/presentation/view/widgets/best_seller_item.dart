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
              Row(
                children: [
                  Center(child: Text('19.99 €',style:Styles.titleStyle20.copyWith(fontWeight: FontWeight.bold))),
                const  Spacer(),
                 const Icon(Icons.star,color: Colors.yellow,size: 15,),
                 const SizedBox( width: 2,),
                const  Text('4.0',style:Styles.titleStyle16),
                 const SizedBox( width: 2,),
                  Text('(2390)',style:Styles.titleStyle14.copyWith(color: Colors.white60),
                  ),
                ],
              ),

            ],
          ),
        )
      ],
    );
  }
}
