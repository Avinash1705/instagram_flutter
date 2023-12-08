import 'package:flutter/material.dart';
import 'package:instagram_flutter/responsive/webScreenLayout.dart';

import '../utils/dimensions.dart';
import 'mobileScreenLayout.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget webScreenLayout;

  final Widget mobileScreenLayout;

  ResponsiveLayout(
      {Key? key,
      required this.webScreenLayout,
      required this.mobileScreenLayout})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > webScreenSize) {
          return WebScreenLayout();
        } else {
          return MobileScreenLayout();
        }
      },
    );
  }
}
