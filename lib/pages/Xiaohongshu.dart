import 'package:flutter/material.dart';
import 'package:vivo/common/util.dart';

class XiaohongshuPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _XiaohongshuPage();
  }
}

class _XiaohongshuPage extends State<XiaohongshuPage> {
  int _imageList = 10;
  bool _visible = true;

  ScrollController _scrollController =
      new ScrollController(keepScrollOffset: false);

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      var px = _scrollController.position.pixels;
      if (px == _scrollController.position.maxScrollExtent) {
        print("Loading Data");
        _onLoadData();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
          child: Column(children: [
            Expanded(
                child: ListView.separated(
                    controller: _scrollController,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      if (index < _imageList) {
                        return renderListItem();
                      } else {
                        return renderLoadMore();
                      }
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        SizedBox(
                          height: 10,
                        ),
                    itemCount: _imageList + 1)),
          ]),
          onRefresh: _onRefresh),
    );
  }

  Widget renderListItem() {
    return Container(
      height: 100,
      color: Util.slRandomColor(),
      child: Center(
        child: CircleAvatar(
          child: Text("title"),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }

  Widget renderLoadMore() {
    return Offstage(
        offstage: _visible,
        child: Container(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Text("加载更多"),
            )));
  }

  Future<void> _onRefresh() async {
    await Future.delayed(Duration(milliseconds: 1500)); //模拟网络请求
    setState(() {
      _imageList = 8;
    });
    print("_onRefresh");
  }

  Future<void> _onLoadData() async {
    setState(() {
      _visible = false;
    });
    await Future.delayed(Duration(milliseconds: 3000)); //模拟网络请求
    setState(() {
      _imageList += 4;
      _visible = true;
    });
    print("_onLoadData");
  }
}
