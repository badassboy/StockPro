import 'package:crm/widgets/defaultButton.dart';
import 'package:flutter/material.dart';

class TaskContainer extends StatelessWidget {
  final String title_1;
  final String images;
  const TaskContainer({
    Key? key,
    required this.title_1,
    required this.images,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10))),
        width: double.infinity,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [Text("$title_1"), DefaultButton2()],
        ),
      ),
      SizedBox(
        height: 1,
      ),
    ]);
  }
}
