import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/presentation/view/widgets/book_rating.dart';
import 'package:bookly_app/features/home/data/presentation/view/widgets/complete_details_button.dart';
import 'package:bookly_app/features/home/data/presentation/view/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/utils/assets.dart';
import 'custom_appbar_details.dart';
import 'custom_books_item.dart';
class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10,bottom: 40),
      child: Column(
         children: [
          const AppBarBookDetails(),
            const  SizedBox(height: 20,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*.32 ),
            child:const CustomFeatureBooksItem(),
          ),
           const SizedBox(height: 43),
           const Text('the Jungle Book',style: Styles.titleStyle30,),
           const SizedBox(height: 6,),
            Opacity(
              opacity: 0.5,
              child: Text('Robert Coding',style: Styles.titleStyle18.copyWith(fontWeight: FontWeight.w500,fontStyle: FontStyle.italic,

              ),),
            ),
           const SizedBox(height: 8,),
          const BookRating(mainAxisAlignment1:MainAxisAlignment.center,),
           SizedBox(height: MediaQuery.of(context).size.height*.03,),
      const Padding(
         padding:  EdgeInsets.symmetric(horizontal: 16.0),
         child:  CompleteDetailsButton(),
       ),
      const    SizedBox(height: 40,),
  const  Align(
   alignment: Alignment.centerLeft,
     child: Text('you can also read',style: Styles.titleStyle14)),
         const SizedBox(height: 16),
        const SimilarBooksListView(),
        ],
      ),
    );
  }
}