import 'package:flutter/material.dart';

class Instructions extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Instructions();
  }
}

class _Instructions extends State<Instructions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black, size: 16),
          backgroundColor: Colors.white,
          title: Text("使用说明",
              style: TextStyle(color: Colors.black, fontSize: 18))),
      body: Container(child: Text("使用说明")),
    );
  }
}
