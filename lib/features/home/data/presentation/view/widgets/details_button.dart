import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';

class DetailsButton extends StatelessWidget {
  const DetailsButton({super.key, required this.fontColor, required this.backColor, required this.text, required this.borderRadius1,  this.fontSize,required this.onPressed1});
 final Color fontColor;
 final Color backColor;
final  void Function()? onPressed1;
 final String text;
 final double ?fontSize;
 final BorderRadiusGeometry borderRadius1;
  @override
  Widget build(BuildContext context) {
    return   ElevatedButton
      (onPressed: onPressed1,
      style: TextButton.styleFrom(
        backgroundColor: backColor,
        shape:RoundedRectangleBorder(borderRadius:borderRadius1),
      ),
      child: Center(child: Text(text,style: Styles.titleStyle18.copyWith(
          color:fontColor,
      fontSize: fontSize
      ),),),
    );
  }
}
