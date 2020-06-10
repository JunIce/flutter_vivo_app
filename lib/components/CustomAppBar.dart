import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key key,
    this.title,
  }) : super(key: key);

  final Widget title;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CustomAppBar();
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}

class _CustomAppBar extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppBar(
      backgroundColor: Colors.white,
      title: widget.title,
    );
  }
}
