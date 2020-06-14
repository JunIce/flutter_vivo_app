import 'package:flutter/material.dart';

class CityDetail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CityDetail();
  }
}

class _CityDetail extends State<CityDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black, size: 16),
          backgroundColor: Colors.white,
          textTheme: TextTheme(headline3: TextStyle(color: Colors.black)),
          title: Text(
            "中国澳门",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: renderBody());
  }

  Widget renderBody() {
    return ListView(
      children: [
        renderHeader(),
        Container(
          margin: EdgeInsets.only(top: 20, left: 20),
          child: Text(
            "流量包套餐",
            style: TextStyle(color: Color(0xff999999), fontSize: 12),
          ),
        ),
        renderListItem(),
        renderListItem(),
        renderListItem(),
        renderListItem(),
        renderListItem(),
        renderListItem(),
        renderListItem(),
        renderListItem(),
        renderListItem(),
        renderListItem(),
        renderListItem(),
        renderListItem(),
        renderListItem(),
      ],
    );
  }

  Widget renderHeader() {
    return Stack(children: [
      Container(
        height: 200,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                  "http://t9.baidu.com/it/u=2268908537,2815455140&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1592574227&t=9c9c7c3c0aa1feb20e109afefa67aa8b",
                ),
                fit: BoxFit.cover)),
      ),
      Positioned(
          bottom: 20,
          left: 20,
          child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.white),
                  borderRadius: BorderRadius.circular(60),
                  image: DecorationImage(
                      image: NetworkImage(
                          "http://t8.baidu.com/it/u=3571592872,3353494284&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1592574227&t=a8abc59b50e8b23373a186bb0ffa2649")))))
    ]);
  }

  Widget renderMain() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        children: [renderListItem()],
      ),
    );
  }

  Widget renderListItem() {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: Color(0xffdddddd)),
            borderRadius: BorderRadius.circular(10)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "韩国 (100MB 1天)",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 4),
          Text(
            "韩国 | 流量包套餐",
            style: TextStyle(color: Color(0xff666666), fontSize: 12),
          ),
          SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "53元",
                style: TextStyle(color: Colors.red),
              ),
              OutlineButton(
                  textColor: Colors.blue,
                  borderSide: BorderSide(color: Colors.blue),
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "购买",
                    style: TextStyle(fontSize: 14),
                  ))
            ],
          )
        ]));
  }
}
