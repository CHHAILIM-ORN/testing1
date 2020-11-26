import 'package:flutter/material.dart';
import 'package:testing/customButtom.dart';

class TestScreen extends StatefulWidget {
  TestScreen({Key key}) : super(key: key);

  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomBottom(
          bgColor: Colors.blue,
          title: "Back",
          onTap: () {
            // Navigator.pop(context);
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
