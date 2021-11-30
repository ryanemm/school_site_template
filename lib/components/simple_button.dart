import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class SimpleButton extends StatelessWidget {
  const SimpleButton({
    Key? key,
    this.text = "Button",
    this.ftSize = 16.0,
    this.buttonColor = Colors.blue,
    this.textColor = Colors.white,
    this.padding = 20.0,
    this.buttonColor1 = Colors.purple,
    this.buttonColor2 = Colors.blue,
    this.shadowColor = Colors.blue,
    this.offsetX = 4,
    this.offsetY = 7,
  }) : super(key: key);

  final String text;
  final double ftSize;
  final Color buttonColor;
  final Color textColor;
  final double padding;
  final Color buttonColor1;
  final Color buttonColor2;
  final Color shadowColor;
  final double offsetY;
  final double offsetX;

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 100,
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: padding),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              offset: Offset(offsetX, offsetY),
              color: shadowColor,
              blurRadius: 8,
              spreadRadius: 0)
        ],
        gradient: LinearGradient(colors: [buttonColor1, buttonColor2]),
        borderRadius: BorderRadius.circular(6),
      ),
      child: (TextButton(
        child: Text(
          text,
          style: GoogleFonts.ubuntu(
              fontSize: ftSize,
              fontWeight: FontWeight.w400,
              color: textColor,
              letterSpacing: 1.0),
        ),
        onPressed: () {},
      )),
    );
  }
}
