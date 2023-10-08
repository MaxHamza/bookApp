import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/presentation/view/widgets/book_rating.dart';
import 'package:bookly_app/features/home/data/presentation/view/widgets/complete_details_button.dart';
import 'package:bookly_app/features/home/data/presentation/view/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';
import '../../../models/Items.dart';
import 'custom_appbar_details.dart';
import 'custom_books_item.dart';
class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key, this.image, required this.items, });
 final String?image;
 final Items items;

  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 30,right: 30,bottom: 40),
      child: CustomScrollView(
          physics:const BouncingScrollPhysics(),
          slivers:[ SliverFillRemaining(
            child: Column(
              children: [
                const AppBarBookDetails(),
                const  SizedBox(height: 20,),
                Padding(
                  padding:EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*.28 ),
                  child: CustomFeatureBooksItem(imageUrl:items.volumeInfo?.imageLinks?.thumbnail??'https://cdn.elearningindustry.com/wp-content/uploads/2016/05/top-10-books-every-college-student-read-e1464023124869.jpeg'),
                ),
                const SizedBox(height: 43),
                 Text(items.volumeInfo?.title??'',style: Styles.titleStyle30,textAlign: TextAlign.center,),
                const SizedBox(height: 6,),
                Opacity(
                  opacity: 0.5,
                  child: Text(items.volumeInfo?.authors?[0]??'Hamza makksousa',style: Styles.titleStyle18.copyWith(fontWeight: FontWeight.w500,fontStyle: FontStyle.italic,

                  ),),
                ),
                const SizedBox(height: 8,),
                const BookRating(mainAxisAlignment1:MainAxisAlignment.center,),
                SizedBox(height: MediaQuery.of(context).size.height*.03,),
                const Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 16.0),
                  child:  CompleteDetailsButton(),
                ),
                const Expanded(child:  SizedBox(height: 50,)),
                const  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('you can also read',style: Styles.titleStyle14)),
                const SizedBox(height: 16,),
                const SimilarBooksListView(),
              ],
            ),
          ),
          ]
      ),
    );
  }
}
//