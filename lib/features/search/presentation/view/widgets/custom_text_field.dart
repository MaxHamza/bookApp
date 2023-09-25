import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder:const OutlineInputBorder(
          borderRadius:BorderRadius.all(Radius.circular(16),),
        borderSide: BorderSide(color: Colors.white)
        ),
        suffixIcon: Opacity(
            opacity: .8,
            child: IconButton(onPressed: (){}, icon:const Icon(Icons.search_rounded,size: 24,))),
        focusedBorder:const OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(16)),
        borderSide: BorderSide(color: Colors.white)
        ),
      ),
    );
  }
}