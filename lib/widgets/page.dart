import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DefaultPage extends StatelessWidget {
  final String title;
  final Widget child;
  final void Function() onPressed;
  DefaultPage(
      {Key? key,
      required this.title,
      required this.child,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(title),
        actions: [
          IconButton(
            icon: SvgPicture.asset("./assets/svgs/more-vertical.svg"),
            onPressed: onPressed,
          )
        ],
      ),
      body: Container(
          color: Color.fromRGBO(225, 225, 225, 0.5),
          padding: EdgeInsets.all(10),
          child: child),
    );
  }
}
