import 'package:flutter/material.dart';
import 'package:nsg_biolabs/shared/config/config.dart';

class CustomEdgeInsets extends EdgeInsets {
  CustomEdgeInsets.only({
    double top = 0,
    double bottom = 0,
    double right = 0,
    double left = 0,
  }) : super.only(
          top: top,
          bottom: bottom,
          right: right,
          left: left,
        );

  CustomEdgeInsets.symmetric({
    double horizontal = 0,
    double vertical = 0,
  }) : super.symmetric(
          vertical: vertical,
          horizontal: horizontal,
        );
}
