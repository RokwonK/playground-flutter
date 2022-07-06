import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './toastWithButton.dart';
import './snackBarWithButton.dart';
import './containerTest.dart';
import './columnTest.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Appbar',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey
      ),
      initialRoute: '/m',
      routes: {
        '/m' : (ctx) => MyPage(),
        '/s' : (ctx) => SecondPage(),
      },
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
      backgroundColor: Colors.blue,
      body: NavigatorTest()
    );
  }
}

class NavigatorTest extends StatelessWidget {
  const NavigatorTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text('Go to Second'),
        onPressed: () {
          Navigator.pushNamed(context, '/s');
          // Navigator.push(context, MaterialPageRoute(
          //   builder: (_) =>  SecondPage()
          // ));
        },
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SecondPage'),
        elevation: 0.0,
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go to First'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
