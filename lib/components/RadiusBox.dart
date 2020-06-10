import 'package:flutter/material.dart';

class RadiusBox extends StatelessWidget {

  const RadiusBox({
    Key key,
    this.radius = 4,
    this.child
  }): super(key: key);

  final double radius;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(radius),
          child: child,
        )
    );
  }
}