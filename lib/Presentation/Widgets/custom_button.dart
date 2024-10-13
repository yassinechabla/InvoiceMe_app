import 'package:flutter/material.dart';
import 'package:invoiceme/Data/Colors/mycolors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double padding;
  final FontWeight fontWeight;
  final void Function()? function;
  const CustomButton(
      {super.key,
      required this.text,
      required this.function,
      required this.padding,
      required this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: MyColors.buttonViolet,
      ),
      child: TextButton(
        onPressed: function,
        child: Text(
          text,
          style: TextStyle(
              fontSize: 28,
              fontFamily: 'Poppins',
              fontWeight: fontWeight,
              color: MyColors.white),
        ),
      ),
    );
  }
}
