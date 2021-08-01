import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {
      required this.text,
      this.color,
      this.fontSize,
      this.alignment = Alignment.topLeft, this.fontWeight=  FontWeight.bold});

  final String text;
  final Color? color;
  final double? fontSize;
  final Alignment alignment;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(

        text,
        style: TextStyle(
          fontWeight: fontWeight,
          color: color,fontFamily: "tajawal",
          fontSize: fontSize,
        ),
      ),
    );
  }
}
