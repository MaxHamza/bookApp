import 'package:flutter/material.dart';

import 'details_button.dart';

class CompleteDetailsButton extends StatelessWidget {
  const CompleteDetailsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 38,
      child:  Row(
        children: [
          Expanded(//you say for elements expanded in row
            child: DetailsButton(backColor:Colors.white,text:'19 €',
                borderRadius1: BorderRadius.only(bottomLeft: Radius.circular(16),topLeft: Radius.circular(16),),
                fontColor: Colors.black
            ),
          ),
          Expanded(
            child: DetailsButton(backColor:Color(0xffE67A6A),text:'Free Preview',
                borderRadius1: BorderRadius.only(bottomRight: Radius.circular(16),topRight: Radius.circular(16),),
                fontColor: Colors.black,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
