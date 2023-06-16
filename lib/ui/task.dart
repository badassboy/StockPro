import 'package:avatar_stack/avatar_stack.dart';
import 'package:crm/widgets/defaultButton.dart';
import 'package:crm/widgets/page.dart';
import 'package:crm/widgets/taskContainer.dart';
import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  const Task({Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return DefaultPage(
        title: "Task",
        onPressed: () async {
          await showMenu(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              context: context,
              position: RelativeRect.fromLTRB(50, 80, 30, 0),
              items: item);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            TaskContainer(
              title_1: "Task in Progress",
              images: images[0],
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              width: double.infinity,
              height: 150,
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Create a landing page for \nEcommerce platform"),
                      Icon(Icons.more_horiz_rounded)
                    ],
                  ),
                  SizedBox(height: 40),
                  ListTile(
                    title: AvatarStack(
                      height: 40,
                      avatars: [
                        Image.asset("./assets/logo.png").image,
                        Image.asset("./assets/logo.png").image,
                        Image.asset("./assets/logo.png").image,
                      ],
                    ),
                    trailing: DefaultButtonIcon(),
                  ),
                ],
              ),
            ),
            SizedBox(height: 1),
            Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Online learning management \nApp design"),
                    Icon(Icons.more_horiz_rounded)
                  ],
                ))
          ],
        ));
  }

  List<PopupMenuItem<dynamic>> item = [
    PopupMenuItem<int>(
      value: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.add_box_rounded, color: Colors.blue),
          Text('Add Task'),
        ],
      ),
    ),
  ];
  List images = [
    "./assets/logo.png",
    "./assets/logo.png",
  ];
}
