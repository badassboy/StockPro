import 'package:crm/widgets/page.dart';
import 'package:crm/widgets/projectContainer.dart';
import 'package:flutter/material.dart';

class Projects extends StatefulWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return DefaultPage(
        title: "Projects",
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
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: [
            //     ProjectContainer(amount: "500", title: "Total"),
            //     ProjectContainer(amount: "500", title: "Upcoming"),
            //   ],
            // ),
            // SizedBox(height: 20),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: [
            //     ProjectContainer(amount: "500", title: "Total"),
            //     ProjectContainer(amount: "500", title: "Upcoming"),
            //   ],
            // ),
            SizedBox(height: 40),
            ProjectContainer(title_1: "Project Status"),
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
          Text('Add Projects'),
        ],
      ),
    ),
  ];
}
