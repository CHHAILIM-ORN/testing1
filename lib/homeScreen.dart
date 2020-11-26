import 'package:flutter/material.dart';
import 'package:testing/customButtom.dart';
import 'package:testing/customField.dart';
import 'package:testing/test.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _searchController = TextEditingController();
  bool _eyeOff = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("app bar"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: CustomBottom(
              bgColor: Colors.black,
              title: "Login",
              txtColor: Colors.red,
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => TestScreen()));
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => TestScreen()));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: CustomTextField(
              controller: _searchController,
              hintText: "Seach",
              prefixIcon: Icon(
                Icons.eco,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: CustomTextField(
              keyboardType: TextInputType.phone,
              controller: _searchController,
              hintText: "Seach",
              prefixIcon: Icon(
                Icons.eco,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: CustomTextField(
              keyboardType: TextInputType.phone,
              controller: _searchController,
              obscureText: _eyeOff,
              hintText: "Seach",
              prefixIcon: Icon(
                Icons.eco,
              ),
              suffixIcon: IconButton(
                icon: Icon(_eyeOff ? Icons.visibility_off : Icons.visibility),
                onPressed: () {
                  setState(() {
                    _eyeOff = !_eyeOff;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
