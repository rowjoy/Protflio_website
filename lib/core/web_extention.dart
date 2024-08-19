
import 'package:flutter/material.dart';

extension MediaQueryValues on BuildContext {
  double get webwidth => MediaQuery.of(this).size.width;
  double get webHight => MediaQuery.of(this).size.height;
}

