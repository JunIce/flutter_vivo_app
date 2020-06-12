import 'package:flutter/material.dart';

class HistoryOrder extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HistoryOrder();
  }
}

class _HistoryOrder extends State<HistoryOrder> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black, size: 16),
        title: Text(
          "历史订单",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: renderBody(),
    );
  }

  Widget renderBody() {
    return ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      separatorBuilder: (BuildContext context, int idx) {
        return SizedBox(
          height: 20,
          child: null,
        );
      },
      itemCount: 10,
      itemBuilder: (BuildContext context, int idx) {
        return renderListItem();
      },
    );
  }

  Widget renderListItem() {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Color(0xffdddddd)),
          borderRadius: BorderRadius.circular(10)),
      child: Column(children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Color(0xffdddddd)),
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://img2.woyaogexing.com/2020/06/12/6f1624db54e943d59c0c5205c5caeb48!400x400.jpg'))),
            ),
            SizedBox(width: 10),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "韩国 (100MB 1天)",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 4),
              Text(
                "韩国 | 流量包套餐",
                style: TextStyle(color: Color(0xff666666), fontSize: 12),
              )
            ])
          ]),
        ),
        Container(height: 1, color: Color(0xffdddddd)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text("已关闭",
                style: TextStyle(color: Color(0xff666666), fontSize: 12)),
            OutlineButton(
                textColor: Colors.blue,
                borderSide: BorderSide(color: Colors.blue),
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  "再次购买",
                  style: TextStyle(fontSize: 14),
                ))
          ]),
        )
      ]),
    );
  }
}
