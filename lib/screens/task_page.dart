import 'package:flutter/material.dart';
import 'package:todo_list_app/screens/delete.task.dart';
import 'package:todo_list_app/todo_check_list.dart';
import 'package:todo_list_app/todo_task.dart';

class TaskPage extends StatefulWidget {
  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
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
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(24),
                            child: Image(
                                image:
                                    AssetImage('images/back_arrow_icon.png')),
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
                TodoTask(),
                TodoCheckList(),
                TodoCheckList(),
                TodoCheckList(),
                TodoCheckList(),
              ],
            ),
            Positioned(
              bottom: 24,
              right: 0,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DeleteTask()),
                  );
                },
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
              ),
            )
          ]),
        ),
      ),
    );
  }
}
