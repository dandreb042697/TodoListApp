import 'package:flutter/material.dart';
import 'package:todo_list_app/Screens/homepage.dart';
import 'package:todo_list_app/todo_check_list.dart';
import 'package:todo_list_app/todo_task.dart';

class DeleteTask extends StatefulWidget {
  @override
  _DeleteTaskState createState() => _DeleteTaskState();
}

class _DeleteTaskState extends State<DeleteTask> {
  void player(int number) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(children: [
            Column(
              children: [
                Padding(
                    padding: EdgeInsets.only(
                      top: 24,
                      bottom: 6,
                    ),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Homepage()),
                            );
                          },
                          child: Container(
                            width: 60,
                            height: 60,
                            child: Image(
                              image: AssetImage(
                                "images/back_arrow_icon.png",
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Enter Task Title",
                              border: InputBorder.none,
                            ),
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    )),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Enter Description for the task...",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 24,
                      )),
                ),
                Positioned(
                  bottom: 24,
                  right: 0,
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(color: (Colors.red)),
                    child: Image(
                      image: AssetImage(
                        "images/delete_icon.png",
                      ),
                    ),
                  ),
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
