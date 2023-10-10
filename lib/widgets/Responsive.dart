// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';

class ResponsivePages extends StatelessWidget {
  final Widget mobilePage;
  final Widget tabletPage;

  const ResponsivePages({
    super.key,
    required this.mobilePage,
    required this.tabletPage,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, Constraints) {
      if (Constraints.maxWidth < 500) {
        return mobilePage;
      } else {
        return tabletPage;
      }
    });
  }
}
