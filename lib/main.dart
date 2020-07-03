import 'package:flutter/material.dart';
import 'package:unitsconverter/units_category.dart';

  void main() {
    runApp(MaterialApp(
      title: 'Units Converter',
      home: Builder(builder: (context) {
        return UnitsCategory();
      }),
    ));
  }
