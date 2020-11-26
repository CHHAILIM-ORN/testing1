import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  final String title;
  final Function onTap;
  final Color bgColor;
  final Color txtColor;

  const CustomBottom({
    this.bgColor,
    this.onTap,
    this.title,
    this.txtColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 50.0,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
            child: Text(
          "$title",
          style: TextStyle(
            fontSize: 18,
            color: txtColor,
          ),
        )),
      ),
    );
  }
}
