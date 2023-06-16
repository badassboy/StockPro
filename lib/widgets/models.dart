import 'package:flutter/material.dart';

class ModelTypes extends StatelessWidget {
  final String text1;
  final String text2;
  final Function() onTap1;
  final Function() onTap2;

  const ModelTypes(
      {Key? key,
      required this.text1,
      required this.text2,
      required this.onTap1,
      required this.onTap2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: onTap1,
              child: Container(
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    // border: Border.fromBorderSide(BorderSide()),
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text("$text1",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            InkWell(
              onTap: onTap2,
              child: Row(
                children: [
                  Container(
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text("$text2",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ),
                  // CircleAvatar(
                  //   radius: 20,
                  //   child: SvgPicture.asset("./assets/svgs/activity.svg"),
                  // ),
                ],
              ),
            )
          ]),
    );
  }
}
