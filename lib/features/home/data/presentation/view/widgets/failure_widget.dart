import 'package:flutter/material.dart';
import '../../../../../../core/utils/styles.dart';

class FailureWidget extends StatelessWidget {
  const FailureWidget({super.key, required this.state});
 final dynamic state;
  @override
  Widget build(BuildContext context) {
    return Center(child:Text(state.errMessage.toString(),style: Styles.titleStyle20,),);
  }
}
