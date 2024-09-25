import 'package:flutter/material.dart';
// import 'package:flutter_application_2/input/InputScreen.dart';

class ListItem extends StatelessWidget {
  final String childText;
  final Widget childClass;

  const ListItem(
      {super.key, required this.childText, required this.childClass});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        color: Colors.blue,
        child: Center(
          child: ElevatedButton(
            child: Text(
              childText,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurpleAccent,
                  fontSize: 28),
            ),
            onPressed: () {
              print("$childText clicked");
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => childClass));
            },
          ),
        ),
      ),
    );
  }
}
