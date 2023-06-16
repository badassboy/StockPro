import 'package:flutter/material.dart';

class AccountsList extends StatelessWidget {
  final String type;
  final String day;
  final String amount;
  const AccountsList({
    Key? key,
    required this.type,
    required this.day,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: ListTile(
          title: Text("$type"),
          subtitle: Text("$day"),
          onTap: () {},
          trailing: Text("$amount"),
          leading: Container(
            child: CircleAvatar(
              backgroundImage: Image.asset("./assets/logo.png").image,
            ),
          )),
    );
  }
}

class AccountContainer extends StatelessWidget {
  final String amount_1;
  final String amount_2;
  final String title_1;
  final String title_2;
  const AccountContainer(
      {Key? key,
      required this.amount_1,
      required this.amount_2,
      required this.title_1,
      required this.title_2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            width: 160,
            height: 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("$amount_1"),
                SizedBox(height: 10),
                Text("$title_1"),
              ],
            )),
        Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            width: 160,
            height: 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("$amount_2"),
                SizedBox(height: 10),
                Text("$title_2"),
              ],
            )),
      ],
    );
  }
}
