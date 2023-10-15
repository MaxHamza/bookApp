import 'package:bookly_app/core/utils/launch_url.dart';
import 'package:flutter/material.dart';
import '../../../models/Items.dart';
import 'details_button.dart';
class CompleteDetailsButton extends StatelessWidget {
  const CompleteDetailsButton({super.key, required this.items});
 final Items items;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 38,
      child:  Row(
        children: [
          Expanded(//you say for elements expanded in row
            child:DetailsButton(backColor:Colors.white,text:'19 €',
                onPressed1: (){

    },
                borderRadius1:const BorderRadius.only(bottomLeft: Radius.circular(16),topLeft: Radius.circular(16),),
                fontColor: Colors.black
            ),
          ),
          Expanded(
            child: DetailsButton(backColor:const Color(0xffE67A6A),text:getText(items),
                onPressed1:(){LaunchUr(context, items.volumeInfo!.previewLink!);
    },
             borderRadius1:const BorderRadius.only(bottomRight: Radius.circular(16),topRight: Radius.circular(16),),
                fontColor: Colors.black,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
String getText (Items items)  {
  if(items.volumeInfo!.previewLink!=null){
    return 'Preview';
  }
  else{
    return 'Not Available';
  }
}