import 'package:crm/widgets/models.dart';
import 'package:flutter/material.dart';

import './profile.dart';

class DashboardPage extends StatefulWidget {
  final String title = 'Demo';

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text("Dashboard"),
        leading: IconButton(
            icon: Container(
                decoration: BoxDecoration(
                    // color: Colors.black,
                    border: Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(100)),
                child: Icon(
                  Icons.format_align_justify,
                  color: Colors.grey,
                )),
            onPressed: () {}),
        actions: [
          IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (BuildContext context) => new ProfilePage(),
                  ));
            },
          ),
        ],
      ),
      body: Container(
        color: Color.fromRGBO(225, 225, 225, 0.5),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisSize: MainAxisSize.max,
          children: [
            ModelTypes(
              text1: 'Clients',
              text2: 'Employees',
              onTap1: () {
                Navigator.pushNamed(context, "clients");
              },
              onTap2: () {},
            ),
            ModelTypes(
              text1: 'Sales',
              text2: 'Stock',
              onTap1: () {},
              onTap2: () {},
            ),
            ModelTypes(
              text1: 'Income',
              text2: 'Accounts',
              onTap1: () {},
              onTap2: () {
                Navigator.pushNamed(context, "accounts");
              },
            ),
            ModelTypes(
              text1: 'Projects',
              text2: 'Task',
              onTap1: () {
                Navigator.pushNamed(context, "projects");
              },
              onTap2: () {
                Navigator.pushNamed(context, "task");
              },
            ),
            ModelTypes(
              text1: 'Purchase',
              text2: 'Notices',
              onTap1: () {},
              onTap2: () {},
            ),
            ModelTypes(
              text1: 'Appoint',
              text2: 'Meeting',
              onTap1: () {},
              onTap2: () {},
            ),
            ModelTypes(
              text1: 'Attendance',
              text2: 'Leave',
              onTap1: () {},
              onTap2: () {},
            ),
            ModelTypes(
              text1: 'Visit',
              text2: 'Support',
              onTap1: () {},
              onTap2: () {},
            ),
          ],
        ),
      ),
    );
  }
}
