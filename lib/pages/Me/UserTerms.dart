import 'package:flutter/material.dart';

class UserTerms extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _UserTerms();
  }
}

class _UserTerms extends State<UserTerms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black, size: 16),
          backgroundColor: Colors.white,
          title: Text("用户条款",
              style: TextStyle(color: Colors.black, fontSize: 18))),
      body: Container(child: Text("用户条款")),
    );
  }
}
