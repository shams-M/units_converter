import 'dart:math';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



List<String> units_categories=['Length','Weight','Time','Memory','Volume','Speed'];

List icons=[FontAwesomeIcons.ruler,FontAwesomeIcons.weightHanging,FontAwesomeIcons.clock,FontAwesomeIcons.memory,FontAwesomeIcons.toolbox,FontAwesomeIcons.running];
List iconsColor=[Colors.blue,Colors.orange,Colors.pink,Colors.green[700],Colors.purpleAccent,Colors.pink[700]];
Map<String, num> lengthVlauesMap = const {
  'M': 1,
  'MM': 0.001,
  'CM': 0.01,
  'DM': 0.1,
  'KM':1000
};
Map<String, num> weightVlauesMap = const {
  'G': 1,
  'MG': 0.001,
  'KG': 1000,
  'TON': 1000000,
};
Map<String, num> timeVlauesMap = const {
  'S': 1,
  'MS': 0.001,
  'M': 60,
  'H': 3600,
};
Map<String, num> memoryVlauesMap =  {
  'BYTE': 1,
  'BIT': 0.125,
  'KB': 1024 ,
  'MB':pow(10, 6),
  'GB':pow(10, 9),
  'TB':pow(10, 12),
  'PB':pow(10, 15),
  'EB':pow(10, 18),
  'ZB':pow(10, 21),
  'YB':pow(10, 24),
};
Map<String, num> volumeVlauesMap = const {
  'L': 1,
  'ML': 0.001,
  'CL': 0.01,
  'DL': 0.1 ,
  'DAL':10,
  'HL':100,
  'KL':1000,
};
Map<String, num> speedVlauesMap = const {
  'm/s': 1,
  'km/h': 0.277778,
  'mph': 0.44704 ,
  'knot': 0.514444,
  'ft/s':0.3048
};

List lm=[lengthVlauesMap,weightVlauesMap,timeVlauesMap,memoryVlauesMap,volumeVlauesMap,speedVlauesMap]; // list of map of values
