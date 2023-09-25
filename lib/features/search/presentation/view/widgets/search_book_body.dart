import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../home/data/presentation/view/widgets/best_seller_item.dart';
import 'custom_text_field.dart';

class SearchBookBody extends StatelessWidget {
  const SearchBookBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 30.0,vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           SafeArea(child: CustomTextField()),
          SizedBox(height: 16,),
          Text('Best seller',style:Styles.titleStyle20),
          SizedBox(height: 16,),
          ListViewSearchBooks()
        ],
      ),
    );
  }
}
class ListViewSearchBooks extends StatelessWidget {
  const ListViewSearchBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        padding: EdgeInsets.zero,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .19,
            child: GestureDetector(
                onTap: () {} ,
                child: const BestSellerItem()),
          );},

      ),
    );;
  }
}


