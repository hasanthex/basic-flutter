import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String childText;

  const ListItem({super.key, required this.childText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        color: Colors.blue,
        child: Center(
          child: Text(
            childText,
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 28),
          ),
        ),
      ),
    );
  }
}
