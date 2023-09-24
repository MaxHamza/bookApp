import 'package:flutter/material.dart';

import '../../../../../../core/utils/assets.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return    Expanded(
      child: ListView.builder(
        physics:const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
          return SizedBox(
            height: MediaQuery.of(context).size.height*.15,
            child: AspectRatio(
              aspectRatio:2.6/4,
              child: Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius:const BorderRadius.all(Radius.circular(8)),
                        color: Colors.redAccent,
                        image: DecorationImage(image:AssetImage(Images.test),
                          fit: BoxFit.fill,))),
              ),
            ),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
