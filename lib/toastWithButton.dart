import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

// ToastButton
class ToastWithButton extends StatelessWidget {
  const ToastWithButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: FlatButton(
          onPressed: () {
            flutterToast();
          },
          child: Text('Toast'),
          color: Colors.blue,
        )
    );
  }

  void flutterToast() {
    Fluttertoast.showToast(
      msg: 'flutter',
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.redAccent,
      fontSize: 20.0,
      textColor: Colors.white,
      toastLength: Toast.LENGTH_SHORT,
    );
  }
}