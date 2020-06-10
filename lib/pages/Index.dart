import 'package:flutter/material.dart';
import 'package:vivo/components/RadiusBox.dart';

class IndexPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _IndexPage();
  }
}

class _IndexPage extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: _customAppBar(),
      ),
      body: ListView(children: [
        SizedBox(height: 20,),
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: RadiusBox(child: Image.network("https://p.ssl.qhimg.com/sdm/420_207_/t01bdc902c3571b1ba0.jpg")),
        ),
        ListTile(
          title: Text("国内流量充值"),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: RadiusBox(child: Image.network("https://p.ssl.qhimg.com/sdm/420_207_/t01bdc902c3571b1ba0.jpg")),
        ),
        ListTile(
            title: Text("境外流量充值"),
            trailing:Container(
              width: 90,
              child: Row(
                  children: [
                    Text("查看全部", style: TextStyle(color: Color(0xffcccccc), fontSize: 14),),
                    SizedBox(width: 4,),
                    Icon(Icons.chevron_right, color: Color(0xffcccccc))
                  ]
              ),
            )
        ),

        Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
          child: Container(
            height: 360,
            child: GridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: _gridList(),
            ),
          ),
        )

        
      ]),
    );
  }

  // gridList
  List<Widget> _gridList() {
    var list = new List(9);

    return list.map((e) => _getContainer()).toList();
  }

  Widget _getContainer() {
    return Container(
      alignment: Alignment.center,
      height: 100,
      child: Text(
        "ddd",
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      color: Colors.blue,
    );
  }

  // 自定义头部
  Widget _customAppBar() {
    return Container(
      width: 400,
      decoration: BoxDecoration(
        color: Color(0xfff1f1f1),
        borderRadius: BorderRadius.all(Radius.circular(18.0)),
      ),
      padding: EdgeInsets.only(top: 8, bottom: 8, left: 14, right: 14),
      child: Row(
        children: [
          Icon(
            Icons.search,
            color: Color(0xff999999),
            size: 18,
          ),
          SizedBox(width: 10),
          Text(
            "搜索国家或地区",
            style: TextStyle(color: Color(0xff999999), fontSize: 14),
          )
        ],
      ),
    );
  }
}
