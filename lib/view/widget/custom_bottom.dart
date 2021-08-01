

import 'package:aqarak/view/widget/custom_text.dart';
import 'package:flutter/material.dart';

class CustomFlatBottom extends StatelessWidget {



  final VoidCallback  onPressed;
  final String text;

  CustomFlatBottom({ required this.onPressed, required this.text}) ;
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  GestureDetector(
        onTap: onPressed ,
        child: Container(

          width: double.infinity,
          height: 50.0,
          margin: EdgeInsets.symmetric(horizontal: 30.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0),
            color: Color(0xff15B89B),
          ),
          child: Center(
            child: CustomText(text: text,fontSize: 16,color: Colors.white,alignment: Alignment.center,)
          ),
        ),
      ),
    );
  }
}

