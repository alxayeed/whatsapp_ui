import 'package:flutter/material.dart';

class ResponsiveLayoutBuilder extends StatelessWidget {
  final Widget mobileLayout;
  final Widget webLayout;
  const ResponsiveLayoutBuilder({
    Key? key,
    required this.mobileLayout,
    required this.webLayout,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      if (constraint.maxWidth > 900) {
        return webLayout;
      } else {
        return mobileLayout;
      }
    });
  }
}
