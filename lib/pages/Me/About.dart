import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _About();
  }
}

class _About extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.black, size: 16),
            backgroundColor: Colors.white,
            title: Text("关于",
                style: TextStyle(color: Colors.black, fontSize: 18))),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              SizedBox(
                  width: 100,
                  height: 100,
                  child: Image.network(
                      'https://img2.woyaogexing.com/2020/06/09/f6c7ae7899354f5595345ae28b68342e!400x400.webp')),
              SizedBox(height: 10),
              Text("关于流量商店",
                  style: TextStyle(color: Colors.black, fontSize: 20)),
              Container(
                  width: 300,
                  padding: EdgeInsets.only(top: 10),
                  child: Expanded(
                      child: Text(
                          "是否自动换行,若为false,文字将不考虑容器大小,单行显示,超出屏幕部分将默认截断...在Flutter的text 里面,当文字被截掉之后,可以改变他的显示方式",
                          style: TextStyle(color: Colors.grey, fontSize: 14))))
            ])));
  }
}
