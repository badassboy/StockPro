import 'package:flutter/material.dart';

class DefaultButton2 extends StatelessWidget {
  const DefaultButton2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            fixedSize: Size(80, 20),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(
                    color: Colors.purple, width: 2, style: BorderStyle.solid)),
            backgroundColor: Colors.white,
            foregroundColor: Colors.purpleAccent),
        onPressed: () {},
        child: Text("See all", style: TextStyle(fontSize: 12)));
  }
}

class DefaultButtonIcon extends StatelessWidget {
  const DefaultButtonIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        icon: Icon(Icons.add_chart),
        style: ElevatedButton.styleFrom(
            fixedSize: Size(170, 20),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(
                    color: Colors.indigo, width: 2, style: BorderStyle.solid)),
            foregroundColor: Colors.white,
            backgroundColor: Colors.indigo),
        onPressed: () {},
        label: Text("12thAug-20thAug", style: TextStyle(fontSize: 12)));
  }
}
