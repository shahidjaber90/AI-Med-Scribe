import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  final Widget mobileBody;
  final Widget tabletBody;
  final Widget desktopBody;
  Layout(
      {required this.mobileBody,
      required this.tabletBody,
      required this.desktopBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: ((context, constraints) {
      if (constraints.maxWidth < 1115) {
        return mobileBody;
      } else if (constraints.maxWidth < 1300) {
        return tabletBody;
      } else {
        return desktopBody;
      }
    }));
  }
}
