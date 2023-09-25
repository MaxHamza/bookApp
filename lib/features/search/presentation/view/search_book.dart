import 'package:bookly_app/features/search/presentation/view/widgets/search_book_body.dart';
import 'package:flutter/material.dart';

class SearchBook extends StatelessWidget {
  const SearchBook({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:SearchBookBody(),
    );
  }
}
