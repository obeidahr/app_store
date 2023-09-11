// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/constant.dart';

class Return extends StatefulWidget {
  const Return({super.key});

  @override
  State<Return> createState() => _ReturnState();
}

class _ReturnState extends State<Return> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: const Text("Return"),
        centerTitle: true,
        leading: IconButton(
            onPressed: (){
            Navigator.pop(context);
          }, 
            icon: 
              const Icon(Icons.arrow_circle_left_outlined,size: 40,)
          ),
      ),
      body:  const SingleChildScrollView(
        child: Column(
            children: [
              NewWidget()
            ],
        ),
      ),
    );
  }
}

class NewWidget extends StatefulWidget {
  const NewWidget({
    super.key,
  });

  @override
  State<NewWidget> createState() => _NewWidgetState();
}

class _NewWidgetState extends State<NewWidget> {

  // Initial Selected Value
  String dropdownvalue = 'Damaged due to poor packaging';   
  
  // List of items in our dropdown menu
  var items = [    
    'Damaged due to poor packaging',
    'No longer needed',
    'Item arrived to late',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0xFFFBF0F0),
            borderRadius: BorderRadius.circular(15)),
        width: 390,
        //height: 121,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(children: [
                  Image.asset("assets/images/Rectangle 23.png"),
                  Positioned(
                      top: 85, child: Image.asset("assets/images/Ellipse 18.png")),
                ]),
                const SizedBox(
                  width: 10,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Bags",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Antela"),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Shipped: Aug 19,2023"),
                    SizedBox(height: 10,),
                    Text('Quantity to return: 1'),
                    
                  ],
                ),
                // const SizedBox(
                //   width: 30,
                // ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Constant().main
                  ),
                  onPressed: (){}, child: const Text("Return back"))
              ],
            ),
            const Text("Why are you returning this"),
            Container(
              width: 250,
              child: const ExpansionTile(
                
                title: Text('Damaged due to poor packaging',style: TextStyle(fontSize: 10),),
                
                children: [
                  ListTile(title: Text('No longer needed',style: TextStyle(fontSize: 10))),
                  ListTile(title: Text('Item arrived to late',style: TextStyle(fontSize: 10))),
                ]
                
                ),
            ),
              Container(
                width: 250,
                //height: 300,
                child: TextFormField(
                                  maxLines: 8,
                                
                                  decoration: const InputDecoration(
                                    hintText: "Your comments here",
                                    border: OutlineInputBorder(),
                                  ),
                              ),
              ),
          Wrap(
            children: [
              Text("Note:",style: TextStyle(color: Constant().main),),
              const Text("We aren’t able to offer policy exception or special handling in response to comments entered on this page."),
            ],
          )
          //  DropdownButton(
                  
          //       // Initial Value
          //       value: dropdownvalue,
                  
          //       // Down Arrow Icon
          //       icon: const Icon(Icons.keyboard_arrow_down),    
                  
          //       // Array list of items
          //       items: items.map((String items) {
          //         return DropdownMenuItem(
          //           value: items,
          //           child: Text(items),
          //         );
          //       }).toList(),
          //       // After selecting the desired option,it will
          //       // change button value to selected value
          //       onChanged: (String? newValue) { 
          //         setState(() {
          //           dropdownvalue = newValue!;
          //         });
          //       },
          //     ),
          ],
        ),
      ),
    );
  }
}