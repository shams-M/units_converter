import 'package:unitsconverter/units_category.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'constants.dart';

class CurrencyExchange extends StatefulWidget {
  @override
  _CurrencyExchangeState createState() => _CurrencyExchangeState();
}

class _CurrencyExchangeState extends State<CurrencyExchange> {
  var mytext = '';
  var converted_val = '0.0';
  static int comefrom=UnitsCategory.indx;
  num selected1 = 1.0;
  num selected2 = 1.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Units Converter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('UnitsConverter'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Card(borderOnForeground: true,elevation: 5,margin: EdgeInsets.all(7),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: CupertinoPicker(
                      backgroundColor: Colors.white,
                      children:
                          (lm[comefrom].keys.map<Widget>((v) => Text(v)).toList()),
                      onSelectedItemChanged: (i) {
                        var li = lm[comefrom].values.toList();
                        selected1 = li[i];
                        convert();
                      },
                      itemExtent: 30,
                    )),
                    Expanded(
                        child: TextField(style: TextStyle(fontSize: 35),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(border: OutlineInputBorder()),
                      onChanged: (v) {
                        mytext = v;
                          convert();
                      },
                    ),
                        ),
                    Expanded(
                      child: CupertinoPicker(
                        backgroundColor: Colors.white,
                        children: (
                            lm[comefrom].keys.map<Widget>((v) => Text(v)).toList()),
                        onSelectedItemChanged: (i) {
                          var li = lm[comefrom].values.toList();
                          selected2 = li[i];
                          convert();
                        },
                        itemExtent: 30,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                child: Center(
              child: Padding(
                padding: EdgeInsets.all(40),
                child: Card(
                  color: Colors.green,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      converted_val,
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }

  void convert() {
    num entered_val;
    mytext != '' ? entered_val = num.parse(mytext) : entered_val = 0;
    converted_val=(selected1/selected2*entered_val).toString();
    setState(() {

    });
  }
}
