import 'dart:math';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



List<String> units_categories=['Length','Weight','Time','Memory','Volume','Speed'];

List icons=[FontAwesomeIcons.ruler,FontAwesomeIcons.weightHanging,FontAwesomeIcons.clock,FontAwesomeIcons.memory,FontAwesomeIcons.toolbox,FontAwesomeIcons.running];
List iconsColor=[Colors.blue,Colors.orange,Colors.pink,Colors.green[700],Colors.purpleAccent,Colors.pink[700]];
Map<String, dynamic> lengthVlauesMap = const {
  'MM': 0.001,
  'CM': 0.01,
  'DM': 0.1,
  'M': 1,
  'KM':1000
};
Map<String, dynamic> weightVlauesMap = const {
  'MG': 0.001,
  'G': 1,
  'KG': 1000,
  'TON': 1000000,
};
Map<String, dynamic> timeVlauesMap = const {
  'MS': 0.001,
  'S': 1,
  'M': 60,
  'H': 3600,
};
Map<String, dynamic> memoryVlauesMap =  {
  'BIT': 0.125,
  'BYTE': 1,
  'KB': 1024 ,
  'MB':pow(10, 6),
  'GB':pow(10, 9),
  'TB':pow(10, 12),
  'PB':pow(10, 15),
  'EB':pow(10, 18),
  'ZB':pow(10, 21),
  'YB':pow(10, 24),
};
Map<String, dynamic> volumeVlauesMap = const {
  'ML': 0.001,
  'CL': 0.01,
  'DL': 0.1 ,
  'L': 1,
  'DAL':10,
  'HL':100,
  'KL':1000,
};
Map<String, dynamic> speedVlauesMap = const {
  'm/s': 1,
  'km/h': 0.277778,
  'mph': 0.44704 ,
  'knot': 0.514444,
  'ft/s':0.3048
};

List lm=[lengthVlauesMap,weightVlauesMap,timeVlauesMap,memoryVlauesMap,volumeVlauesMap,speedVlauesMap]; // list of map of values
