import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:todo_list_app/screens/task_page.dart';
import 'package:todo_list_app/unnamed_task.dart';
import 'package:todo_list_app/todo_task.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 32,
          ),
          margin: EdgeInsets.only(
            bottom: 20,
          ),
          color: (Colors.white),
          child: Stack(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage('images/logo.png'),
                ),
                Expanded(
                    child: ListView(
                  children: [
                    TaskCardWidget(),
                    UnnamedTask(),
                    UnnamedTask(),
                    UnnamedTask(),
                    UnnamedTask(),
                    UnnamedTask(),
                  ],
                ))
              ],
            ),
            Positioned(
              bottom: 24,
              right: 0.0,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TaskPage()),
                  );
                },
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(color: (Colors.purple)),
                  child: Image(
                    image: AssetImage(
                      "images/add_icon.png",
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
