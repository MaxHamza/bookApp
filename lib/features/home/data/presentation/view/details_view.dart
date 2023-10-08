import 'package:bookly_app/features/home/data/managers/fetch_similar_books/fetch_similar_books_cubit.dart';
import 'package:bookly_app/features/home/data/presentation/view/widgets/details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/Items.dart';
class DetailsView extends StatefulWidget {
  const DetailsView({super.key, required this.items});
 final Items items;
  @override
  State<DetailsView> createState() => _DetailsViewState();
}


class _DetailsViewState extends State<DetailsView> {
  @override
  initState(){
    BlocProvider.of<FetchSimilarBooksCubit>(context).fetchSimilarBooks(category:widget.items.volumeInfo!.categories![0]);
    super.initState();
  }
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      body:DetailsViewBody(items: widget.items,),
    );
  }
}

