import 'package:flutter/material.dart';

class AppBarBookDetails extends StatelessWidget {
  const AppBarBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          IconButton(onPressed: (){}, icon:const Icon( Icons.close)),
          const Spacer(),
          IconButton(onPressed: (){}, icon:const Icon( Icons.add_shopping_cart_outlined)),
        ],
      ),
    );
  }
}
