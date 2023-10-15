import 'package:bookly_app/core/utils/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../home/data/models/Items.dart';
import '../../../../home/data/presentation/view/widgets/best_seller_item.dart';

class ListViewSearchBooks extends StatelessWidget {
   const ListViewSearchBooks({super.key,required this.items});
  final Items? items;
  @override
  Widget build(BuildContext context) {

      return Container(
            padding: EdgeInsets.zero,
            child: SizedBox(
              height: MediaQuery.of(context).size.height *.23,
              child: BestSellerItem(
                    items: items,)),
            );}
  }

class CustomSearchDelegate extends SearchDelegate {
  CustomSearchDelegate({required this.items});
  @override
  ThemeData appBarTheme(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return theme.copyWith(
      cardColor: Colors.white,
     focusColor:Colors.white ,
     hintColor:Colors.white ,
    textTheme:const TextTheme(bodyLarge: Styles.titleStyle18));
  }

  final List<Items> items;

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear, color: Colors.white),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<Items> matchQuery = [];
    for (var title in items) {
      if (title.volumeInfo!.title!.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(title);
      }
    }

    if (matchQuery.isEmpty) {
      return const Center(
        child: Text("There are no suggestions that match your search!",style: Styles.titleStyle20,textAlign: TextAlign.center,),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Best seller', style: Styles.titleStyle20, textAlign: TextAlign.left),
        const SizedBox(height: 16,),
        Expanded(
          child: ListView.builder(
            itemCount: matchQuery.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () async{
                await  GoRouter.of(context).push(AppRouter.detailsBook, extra: matchQuery[index]);
                },
                child: ListViewSearchBooks(items: matchQuery[index]),
              );
            },
          ),
        ),
      ],
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<Items> matchQuery = [];
    for (var title in items) {
      if (title.volumeInfo!.title!.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(title);
      }
    }

    if (matchQuery.isEmpty) {
      return const Center(
        child: Text("There are no suggestions that match your search!",style: Styles.titleStyle20,textAlign: TextAlign.center),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16,),
        const Text('Best seller', style: Styles.titleStyle20, textAlign: TextAlign.left),
        const SizedBox(height: 16,),
        Expanded(
          child: ListView.builder(
            itemCount: matchQuery.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () async{
               await  GoRouter.of(context).push(AppRouter.detailsBook, extra:matchQuery[index]);
                },
                child: ListViewSearchBooks(items: matchQuery[index]),
              );
            },
          ),
        ),
      ],
    );
  }
}
