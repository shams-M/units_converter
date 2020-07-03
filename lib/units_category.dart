import 'package:unitsconverter/units_converter.dart';
import 'package:flutter/material.dart';
import 'package:unitsconverter/constants.dart';

class UnitsCategory extends StatefulWidget {
  static int indx;
  @override
  _UnitsCategoryState createState() => _UnitsCategoryState();
}

class _UnitsCategoryState extends State<UnitsCategory> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Units Converter'),
      ),
      body: GridView.builder(
          itemCount: units_categories.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return GestureDetector(
              child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(units_categories[index]),
                      Icon(icons[index],color: iconsColor[index],size: 40,)
                    ],
                  )),onTap: (){
              UnitsCategory.indx=index;
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return CurrencyExchange();
                }));
            },
            );
          }),
    );
  }
}
