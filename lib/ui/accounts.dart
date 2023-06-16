import 'package:crm/widgets/defaultButton.dart';
import 'package:crm/widgets/page.dart';
import 'package:flutter/material.dart';

class Accounts extends StatefulWidget {
  const Accounts({Key? key}) : super(key: key);

  @override
  State<Accounts> createState() => _AccountsState();
}

class _AccountsState extends State<Accounts> {
  @override
  Widget build(BuildContext context) {
    return DefaultPage(
        title: "Accounts",
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
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    "Income",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                DefaultButton2()
              ],
            ),
            // SizedBox(
            //   height: 10,
            // ),
            Flexible(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 70,
                      margin: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: ListTile(
                          title: Text(index % 2 == 0 ? "Upwork" : "Transfer"),
                          subtitle: Text("Today"),
                          onTap: () {},
                          trailing: Text(
                            "+\$400",
                            style: TextStyle(
                                color:
                                    index % 2 == 0 ? Colors.red : Colors.green),
                          ),
                          leading: Container(
                            child: CircleAvatar(
                              backgroundImage:
                                  Image.asset("./assets/logo.png").image,
                            ),
                          )),
                    );
                  }),
            ),
            //
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
          Text('Add Accounts'),
        ],
      ),
    ),
  ];
}
