import 'package:flutter/material.dart';

import './pages/Index.dart';
import './pages/Order.dart';
import './pages/Me.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _tabIndex = 0;
  List<Widget> _pages = [
    IndexPage(),
    OrderPage(),
    MePage()
  ];


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: _pages[_tabIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _tabIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.shop), title: Text("商店")),
          BottomNavigationBarItem(icon: Icon(Icons.camera), title: Text("订单")),
          BottomNavigationBarItem(icon: Icon(Icons.casino), title: Text("我"))
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Color(0xff999999),
        selectedFontSize: 12.0,
        onTap: (int index) {
          setState(() {
            _tabIndex = index;
          });
        },
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
