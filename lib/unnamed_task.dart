import 'package:flutter/material.dart';

class UnnamedTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          vertical: 32,
          horizontal: 24,
        ),
        color: Colors.white,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "(Unnamed Task)",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 15,
            ),
            child: Text(
              "No Description Added",
              style: TextStyle(
                fontSize: 16,
                height: 1.5,
              ),
            ),
          )
        ]));
  }
}
