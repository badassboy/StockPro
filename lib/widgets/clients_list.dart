import 'package:flutter/material.dart';

class ClientsList extends StatelessWidget {
  final String name;
  final String number;
  final String email;
  const ClientsList(
      {Key? key, required this.name, required this.number, required this.email})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: Colors.grey, width: 1, style: BorderStyle.solid))),
      child: ListTile(
          title: Text("$name"),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.phone, size: 14),
                    SizedBox(width: 10),
                    Text("$number", style: TextStyle(fontSize: 12)),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.email, size: 14),
                    SizedBox(width: 10),
                    Text("$email", style: TextStyle(fontSize: 12)),
                  ],
                ),
              ],
            ),
          ),
          onTap: () {},
          onLongPress: () {
            //changes();
          },
          trailing: ElevatedButton(
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
              child: Text("View Details", style: TextStyle(fontSize: 8))),
          leading: Container(
            child: CircleAvatar(
              backgroundImage: Image.asset("./assets/logo.png").image,
            ),
          )),
    );
  }
}
