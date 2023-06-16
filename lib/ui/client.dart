import 'package:crm/widgets/clients_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Clients extends StatefulWidget {
  const Clients({Key? key}) : super(key: key);

  @override
  State<Clients> createState() => _ClientsState();
}

class _ClientsState extends State<Clients> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text("Clients"),
        actions: [
          IconButton(
              icon: SvgPicture.asset("./assets/svgs/more-vertical.svg"),
              onPressed: () async {
                await showMenu(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    context: context,
                    position: RelativeRect.fromLTRB(50, 80, 30, 0),
                    items: item);
              })
        ],
      ),
      body: Container(
          color: Color.fromRGBO(225, 225, 225, 0.5),
          padding: EdgeInsets.all(10),
          child: Column(children: [
            Flexible(
                child: ListView(children: [
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: Colors.grey,
                            width: 1,
                            style: BorderStyle.solid))),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Text("Clients",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 13.0),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                fixedSize: Size(80, 20),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    side: BorderSide(
                                        color: Colors.purple,
                                        width: 2,
                                        style: BorderStyle.solid)),
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.purpleAccent),
                            onPressed: () {},
                            child: Text("See all",
                                style: TextStyle(fontSize: 12))),
                      )
                    ]),
              ),
              ClientsList(
                  name: "Jerry Boateng",
                  number: "0240845898",
                  email: "jerrito0240@gmail.com"),
              ClientsList(
                  name: "John Mawuli",
                  number: "0240845898",
                  email: "jerrito0240@gmail.com"),
              ClientsList(
                  name: "Esther Adjei",
                  number: "05550488383",
                  email: "jerrito0240@gmail.com"),
              ClientsList(
                  name: "Jerry Boateng",
                  number: "0240845898",
                  email: "jerrito0240@gmail.com"),
              ClientsList(
                  name: "Maggi Addo",
                  number: "02003858858",
                  email: "jerrito0240@gmail.com"),
              ClientsList(
                  name: "Jerry Boateng",
                  number: "0240845898",
                  email: "jerrito0240@gmail.com"),
            ]))
          ])),
    );
  }

  List<PopupMenuItem<dynamic>> item = [
    PopupMenuItem<int>(
      value: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.add_box_rounded, color: Colors.blue),
          Text('Add Client'),
        ],
      ),
    ),
  ];
}
