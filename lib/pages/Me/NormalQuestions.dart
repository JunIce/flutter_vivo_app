import 'package:flutter/material.dart';

class NormalQuestion extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NormalQuestion();
  }
}

class _NormalQuestion extends State<NormalQuestion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black, size: 16),
          backgroundColor: Colors.white,
          title: Text("常见问题",
              style: TextStyle(color: Colors.black, fontSize: 18))),
      body: Container(child: Text("常见问题")),
    );
  }
}
