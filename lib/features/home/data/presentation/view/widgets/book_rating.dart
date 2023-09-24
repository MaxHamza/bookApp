import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, required this.mainAxisAlignment1});
final MainAxisAlignment mainAxisAlignment1;
  @override
  Widget build(BuildContext context) {
     return Row(
       mainAxisAlignment: mainAxisAlignment1,
      children: [
        const Icon(FontAwesomeIcons.solidStar,color: Colors.yellow,size: 15,),
        const SizedBox( width: 6.3,),
        const  Text('4.0',style:Styles.titleStyle16),
        const SizedBox( width: 2,),
        Opacity(
          opacity: 0.5,
          child: Text('(2390)',style:Styles.titleStyle14.copyWith(color: Colors.white60),
          ),
        ),
      ],
    );
  }
}
