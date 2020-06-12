import 'package:flutter/material.dart';
import 'package:vivo/pages/HistoryOrder.dart';

class OrderPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _OrderPage();
  }
}

class _OrderPage extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title:
              Text("订单", style: TextStyle(color: Colors.black, fontSize: 18)),
          actions: [
            IconButton(
                icon: Icon(
                  Icons.history,
                  color: Colors.blue,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return HistoryOrder();
                    },
                  ));
                })
          ],
        ),
        body: ConstrainedBox(
          constraints: BoxConstraints.expand(),
          child: Stack(alignment: AlignmentDirectional.center, children: [
            Container(
              child: Text(
                "您还没有订单",
                style: TextStyle(fontSize: 18.0, color: Color(0xff999999)),
              ),
            ),
            Positioned(
                bottom: 30,
                child: SizedBox(
                  width: 360,
                  child: FlatButton(
                    onPressed: () {},
                    child: Text("前往购买"),
                    textColor: Colors.white,
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                ))
          ]),
        ));
  }
}
