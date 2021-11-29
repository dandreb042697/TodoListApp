import 'package:flutter/material.dart';

class TaskCardWidget extends StatelessWidget {
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
            "To-do list App!",
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
              "Welcome TO-DO LIST app, this is a default task that you can edit or delete to start using the app.",
              style: TextStyle(
                fontSize: 16,
                height: 1.5,
              ),
            ),
          )
        ]));
  }
}

class TodoTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 8,
      ),
      child: Row(
        children: [
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: (Colors.purple),
            ),
            child: Image(
              image: AssetImage("images/check_icon.png"),
            ),
          ),
          Text(
            "Create your first task",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
