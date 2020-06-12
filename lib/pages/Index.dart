import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vivo/components/RadiusBox.dart';
import 'package:vivo/pages/CityDetail.dart';

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
        title: renderAppBar(),
      ),
      body: CustomScrollView(
        slivers: [
          renderSwiper(),
          renderSecondWidget(),
          renderGridView(),
          renderScrollView()
        ],
      ),
    );
  }

  // 第一轮播图
  Widget renderSwiper() {
    return SliverToBoxAdapter(
      child: Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 10),
          child: RadiusBox(
              child: Image.network(
            "https://p.ssl.qhimg.com/sdm/420_207_/t01bdc902c3571b1ba0.jpg",
            fit: BoxFit.cover,
          ))),
    );
  }

  // 第二轮播图
  Widget renderSecondWidget() {
    return SliverToBoxAdapter(
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "境外流量充值",
                    style: TextStyle(fontSize: 16),
                  ),
                  Row(children: [
                    Text(
                      "查看全部",
                      style: TextStyle(color: Color(0xffcccccc), fontSize: 14),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Icon(Icons.chevron_right, color: Color(0xffcccccc))
                  ])
                ],
              ),
            ),
            RadiusBox(
                child: Image.network(
                    "https://p.ssl.qhimg.com/sdm/420_207_/t01bdc902c3571b1ba0.jpg")),
          ])),
    );
  }

  // 境外流量充值
  Widget renderGridView() {
    var list = new List(9);
    return SliverToBoxAdapter(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "境外流量充值",
                  style: TextStyle(fontSize: 16),
                ),
                Row(children: [
                  Text(
                    "查看全部",
                    style: TextStyle(color: Color(0xffcccccc), fontSize: 14),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Icon(Icons.chevron_right, color: Color(0xffcccccc))
                ])
              ],
            ),
          ),
          GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: list.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 1.3,
              ),
              itemBuilder: (context, index) {
                return _getContainer();
              })
        ],
      ),
    ));
  }

  // grid子项
  Widget _getContainer() {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return CityDetail();
          },
        ));
      },
      child: Container(
//    color: Colors.green,
        child: RadiusBox(
          child: Column(
            children: [
              SizedBox(
                width: double.maxFinite,
                height: 60,
                child: Image.network(
                  "https://img2.woyaogexing.com/2020/06/10/ceed483c1df945b7bd01e0a22c6bf96b!400x400.jpeg",
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(width: 1, color: Color(0xffdddddd)),
                    bottom: BorderSide(width: 1, color: Color(0xffdddddd)),
                    right: BorderSide(width: 1, color: Color(0xffdddddd)),
                  ),
                ),
                alignment: Alignment.center,
                child: Padding(
                    padding: EdgeInsets.only(
                      top: 6,
                      bottom: 6,
                    ),
                    child: Text(
                      "4元起",
                      style:
                          TextStyle(color: Colors.orangeAccent, fontSize: 12),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }

  // 自定义头部
  Widget renderAppBar() {
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

  // 滚动视图
  Widget renderScrollView() {
    return SliverToBoxAdapter(
        child: Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "境外跨地区通用",
                style: TextStyle(fontSize: 16),
              ),
              Row(children: [
                Text(
                  "查看全部",
                  style: TextStyle(color: Color(0xffcccccc), fontSize: 14),
                ),
                SizedBox(
                  width: 4,
                ),
                Icon(Icons.chevron_right, color: Color(0xffcccccc))
              ])
            ],
          ),
        ),
        Container(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemExtent: 150,
            itemBuilder: (BuildContext context, int idx) {
              return renderCityItem();
            },
          ),
        )
      ]),
    ));
  }

  // 图例子项

  Widget renderCityItem() {
    return Padding(
      padding: EdgeInsets.all(5),
      child: RadiusBox(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: double.maxFinite,
              height: 60,
              child: Image.network(
                "https://img2.woyaogexing.com/2020/06/11/1cc80fb092ec4fa1a176ce626e11b0f8!400x400.jpeg",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: double.maxFinite,
              height: 30,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: new Border.all(width: 1, color: Colors.black),
//                          border: Border(
//                            left: BorderSide(width: 1, color: Colors.black),
//                            bottom: BorderSide(width: 1, color: Colors.black),
//                            right: BorderSide(width: 1, color: Colors.black),
//                          ),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(4),
                      bottomLeft: Radius.circular(4))),
              child: Text("dsdsds"),
            )
          ],
        ),
      ),
    );
  }
}
