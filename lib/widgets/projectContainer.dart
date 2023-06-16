import 'package:avatar_stack/avatar_stack.dart';
import 'package:crm/widgets/defaultButton.dart';
import 'package:flutter/material.dart';

class ProjectContainer extends StatelessWidget {
  final String title_1;
  const ProjectContainer({
    Key? key,
    required this.title_1,
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
          children: [
            Text("$title_1",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            DefaultButton2()
          ],
        ),
      ),
      SizedBox(
        height: 1,
      ),
      Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
        ),
        width: double.infinity,
        height: 200,
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Create a landing page for \nEcommerce platform",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: AvatarStack(
                height: 40,
                avatars: [
                  Image.asset("./assets/logo.png").image,
                  Image.asset("./assets/logo.png").image,
                  Image.asset("./assets/logo.png").image,
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("50%"),
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  width: 200,
                  height: 6,
                  child: LinearProgressIndicator(
                    value: 0.5,
                    color: Colors.green,
                    backgroundColor: Colors.grey,
                  ),
                ),
              ],
            ),
            // ListTile(
            //   //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   trailing: AvatarStack(
            //     height: 40,
            //     avatars: [
            //       Image.asset("./assets/logo.png").image,
            //       Image.asset("./assets/logo.png").image,
            //       Image.asset("./assets/logo.png").image,
            //     ],
            //   ),
            //
            //   //title: DefaultButtonIcon(),
            // ),
          ],
        ),
      ),
    ]);
  }
}
