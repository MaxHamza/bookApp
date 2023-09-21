import 'package:flutter/material.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 10),
      child: Column(
        children: [
          Row(
            children: [
              IconButton(onPressed: (){}, icon:const Icon( Icons.design_services_sharp)),
         const Spacer(),
              IconButton(onPressed: (){}, icon:const Icon( Icons.shopping_cart_checkout_rounded)),
            ],
          ),

        ],
      ),
    );
  }
}
