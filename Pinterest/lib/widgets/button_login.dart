import 'dart:ffi';

import 'package:flutter/material.dart';
class ButtonLogin extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color color1;
  final Color color2;

  ButtonLogin({

    required this.text,
    required this.press,
    required this.color1,
    required this.color2,
})

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: press,
      child: Padding(
        padding: EdgeInsets.only(top :6.0 ,bottom :6.0),
        child: Container(
        width: double.infinity,
        height: 65,
         decoration: DecoratedBox(
               borderRadius :BorderRadius.circular(12),
              gradient :LinearGradient(
    begin: Alignment.centerLeft,
    begin: Alignment.centerRight,
    colors: [
      Colors.redAccent,
      Colors.red,
    ],
    ),
     boxShadow[
    BoxShadow(
    offset : Offset(-2, -2),
    spreadRadius: 1,
    blurRadius: 4,
    color: Colors.red,
    ),
    BoxShadow(
    offset : Offset(-2, -2),
    spreadRadius: 1,
    blurRadius: 4,
    color: Colors.red,
    ),
    ],
    ),
    ),

    );
  }
}
