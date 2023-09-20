import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/home/data/presentation/view/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/data/presentation/view/widgets/custom_List_view_item.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:40,bottom: 20, left: 24, right: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          const SizedBox(height: 10),
         const CustomFeatureListViewItem(),
        const  SizedBox(height: 5,),
        const  Text('Best seller',style:TextStyle(
            fontSize: 18.0,
          ),),
          const  SizedBox(height: 20,),
          Expanded(
            child: ListView.builder(itemBuilder:(context,index){
              return Row(
                children: [
                  Image(image:AssetImage(Images.test),width:90,height: 150,fit: BoxFit.fill,),
                 const SizedBox(width: 15,),
                Container(
                  height:150.0,
                  child: const  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 20,),
                       Text('''harry poter
and the goblet of fire ''',maxLines: 3,style: TextStyle(
                         color: Colors.white60,
                       ),),
                        SizedBox(height: 5,),
                        Text('3k Rowling',textAlign: TextAlign.start,style: TextStyle(
                          color: Colors.white60,
                        )),
                        SizedBox(height: 20.0,),
                        Row(
                          children: [
                            Center(child: Text('19.99',style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),)),
                            SizedBox( width: 3,),
                            Icon(Icons.price_check_rounded,color: Colors.yellow,),
                            SizedBox( width: 10,),
                            Icon(Icons.star,color: Colors.yellow,size: 15,),
                            SizedBox( width: 2,),
                            Text('4.0',style:TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,)
                            ),
                            SizedBox( width: 2,),
                            Text('(2390)',style:TextStyle(
                              color:Colors.white60,)
                            ),
                          ],
                        ),

                      ],
                    ),
                )
                ],
              );
            },
              itemCount: 5,
            ),
          )
        ],
      ),
    );
  }
}