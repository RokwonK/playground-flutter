import 'package:flutter/material.dart';

class ColumTest extends StatelessWidget {
  const ColumTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.white,
                child: Text('Container 1'),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Text('Container 2'),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: Text('Container 3'),
              )
            ],
          ),
        )
    );
  }
}