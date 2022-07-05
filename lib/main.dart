import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar icon menu'),
        centerTitle: true,
        elevation: 0.0,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              print("ggg");
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print("ggg");
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/team.JPG'),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/team.JPG'),
                  backgroundColor: Colors.white,
                ),
              ],
              accountName: Text('rokwon'),
              accountEmail: Text('a@aaa.com'),
              onDetailsPressed: () {
                print('show Detail');
              },
              decoration: BoxDecoration(
                color: Colors.red[200],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                )
              ),
            ),
            ListTile(
              leading: Icon(Icons.home,
                color: Colors.grey[850],
              ),
              title: Text('Home'),
              onTap: (){
                print('home Tap');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.settings,
                color: Colors.grey[850],
              ),
              title: Text('Settings'),
              onTap: (){
                print('setting Tap');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.question_answer,
                color: Colors.grey[850],
              ),
              title: Text('Q&A'),
              onTap: (){
                print('Q&A Tap');
              },
              trailing: Icon(Icons.add),
            )
          ],
        ),
      ),
      body: Center(
        child: FlatButton(
          onPressed: () {
            flutterToast();
          },
          child: Text('Toast'),
          color: Colors.blue,
        )
      )
    );
  }
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

class MySnackBar extends StatelessWidget {
  const MySnackBar({Key? key}) : super(key: key);

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
