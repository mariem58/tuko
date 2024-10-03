import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({this.text,this.color,this.OnTap});
  String? text;
  Color? color;
  Function()? OnTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnTap,
      child: Container(
        padding: EdgeInsets.only(left: 24.0),
        alignment: Alignment.centerLeft,
        child: Text(
          text!,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,

          ),
        ),
        color: color,
        height: 65,
        width: double.infinity,
      ),
    );
  }
}