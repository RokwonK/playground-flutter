import 'package:flutter/material.dart';

class SnackBarWithButton extends StatelessWidget {
  const SnackBarWithButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text('Show me'),
        onPressed: () {
          Scaffold.of(context)
              .showSnackBar(SnackBar(
            content: Text('Hellow',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white
              ),
            ),
            backgroundColor: Colors.teal,
            duration: Duration(milliseconds: 1000),
          ));
        },
      ),
    );
  }
}