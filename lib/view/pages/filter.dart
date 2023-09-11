import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/components.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  RangeValues values =  const RangeValues(0.1, 0.5);
  @override
  Widget build(BuildContext context) {
    RangeLabels labels = RangeLabels(values.start.toString(), values.end.toString());
    return Container(
        padding: const EdgeInsets.all(20),
        //height: 600,
        //width: 430,
        //color: const Color.fromRGBO(255, 215, 64, 1),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Gender",style: TextStyle(fontSize: 25),),
            RangeSlider(
              labels: labels,
              divisions: 10,
              values:values, 
              onChanged:(newValue){
              setState(() {
                values = newValue;
              });
            }),
            myDivider(),
            const Text('Price Rate',style: TextStyle(fontSize: 25)),
            myDivider(),
            const Text('Color',style: TextStyle(fontSize: 25)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFB5838D),
                              ),
                              onPressed: () {},
                              icon: const Text(
                                "Check Out",
                                style: TextStyle(color: Colors.white,fontSize: 21),
                              ),
                              label: const Icon(Icons.keyboard_double_arrow_right)),
                ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFB5838D),
                          ),
                          onPressed: () {},
                          
                          child: const Text("Reset"))
              ],
            ),
          ],
        ),
      );
  }
}