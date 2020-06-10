import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:vivo/components/CustomAppBar.dart';
import 'package:vivo/pages/Me/About.dart';
import 'package:vivo/pages/Me/NormalQuestions.dart';
import 'package:vivo/pages/Me/UserTerms.dart';

class MePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MePage();
  }
}

class _MePage extends State<MePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            title:
                Text("我", style: TextStyle(color: Colors.black, fontSize: 18))),
        body: ListView(children: [
          _renderItemWrap(
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              "虚拟卡位置",
              style: TextStyle(color: Color(0xff333333)),
            ),
            Text(
              "暂无",
              style: TextStyle(color: Color(0xffcccccc)),
            )
          ])),
          _renderItemWrap(
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(children: [
              Text(
                "设备编号",
                style: TextStyle(color: Color(0xff333333)),
              ),
              SizedBox(width: 8),
              Text(
                "HJKSJKHJKDSHKJDHSHJK",
                style: TextStyle(color: Color(0xff999999), fontSize: 12),
              ),
            ]),
            Container(
              child: GestureDetector(
                child: Text(
                  "点击可复制",
                  style: TextStyle(color: Colors.blue, fontSize: 12),
                ),
                onTap: () {
                  Fluttertoast.showToast(
                      msg: "复制成功",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      fontSize: 16.0);
                },
              ),
            )
          ])),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return NormalQuestion();
                },
              ));
            },
            child: _renderItemWrap(Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "常见问题",
                    style: TextStyle(color: Color(0xff333333)),
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.grey,
                  )
                ])),
          ),
          InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return UserTerms();
                  },
                ));
              },
              child: _renderItemWrap(Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "用户条款",
                      style: TextStyle(color: Color(0xff333333)),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.grey,
                    )
                  ]))),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return About();
                },
              ));
            },
            child: _renderItemWrap(Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "关于流量商店",
                    style: TextStyle(color: Color(0xff333333)),
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.grey,
                  )
                ])),
          ),
          _renderItemWrap(
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              "检测新版本",
              style: TextStyle(color: Color(0xff333333)),
            ),
            Text(
              "v4.4.1",
              style: TextStyle(color: Color(0xffcccccc)),
            )
          ])),
        ]));
  }

  Widget _renderItemWrap(Widget child, {onTap}) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.only(top: 20, bottom: 20),
        decoration: BoxDecoration(
            border:
                Border(bottom: BorderSide(width: 1, color: Color(0xffdddddd)))),
        child: child,
      ),
    );
  }
}
