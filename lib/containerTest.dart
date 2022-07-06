import 'package:flutter/material.dart';

class ContainerTest extends StatelessWidget {
  const ContainerTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.red,
        width: 100,
        height: 100,
        margin: EdgeInsets.symmetric(
          vertical: 80,
          horizontal: 20,
        ),
        //padding: EdgeInsets.all(4),

        child: Center(
          child: Text('Hello'),
        ) ,
      ),
    );
  }
}
