// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/components.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Image.asset('assets/images/Group 67.png'),
          const SizedBox(
            width: 15,
          ),
        ],
        title: const Text("Product page"),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_circle_left_outlined,
              size: 40,
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset('assets/images/Frame 52.png'),
                const SizedBox(
                  width: 10,
                ),
                Stack(children: [
                  Container(
                      height: 350,
                      child: Image.asset(
                        'assets/images/Rectangle 23.png',
                        fit: BoxFit.fill,
                      )),
                  Image.asset('assets/images/share-2.png')
                ]),
              ],
            ),
            Container(
              width: 140,
              decoration: BoxDecoration(
                  color: const Color(0xFF7A7581),
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  TextButton(onPressed: () {}, child: const Text('-')),
                  const Text("1"),
                  TextButton(onPressed: () {}, child: const Text('+')),
                ],
              ),
            ),
            Container(
              width: 300,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bags',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Antelop')
                    ],
                  ),
                  Text('\$454')
                ],
              ),
            ),
            Container(
                width: 300,
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Color',
                      style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                    ),
                    Wrap(//mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black38),
                          ),
                          child: Image.asset('assets/images/Ellipse 18.png',fit: BoxFit.cover,)),
                          const SizedBox(width: 10,),
                          Container(
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black38),
                          ),
                          child: Image.asset('assets/images/Ellipse 18.png',fit: BoxFit.cover,)),
                          const SizedBox(width: 10,),
                          Container(
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black38),
                          ),
                          child: Image.asset('assets/images/Ellipse 18.png',fit: BoxFit.cover,color: Colors.black,)),
                          const SizedBox(width: 10,),
                          Container(
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black38),
                          ),
                          child:const CircleAvatar(
                            radius: 26,
                            backgroundColor: Colors.amber,
                          )),
                          ElevatedButton(
                            onPressed: (){}, 
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFB5838D)
                            ),
                            child: const Text('Add to cart',style: TextStyle(color: Colors.white),))
                      ],
                    ),
                    const Text("Descrition",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                    const Text("- Celana Jeans dengan Pola Mom Fit\n- Bahan Katun Denim Tidak Melar\n- Pinggang Elastis memakai karet\n- Nyaman dipakai...."),
                    myDivider(),
                    Container(
                      width: 350,
                      child: Column(
                        children: [
                          Row(
                            children:[ 
                            NewWidget(Image.asset('assets/images/shield-check-line 1.png'),"Original product"),
                            NewWidget(Image.asset('assets/images/history-line 1.png'),"Return of goods in 5 days"),
                            ]),
                            Row(
                            children:[ 
                            NewWidget(Image.asset('assets/images/Vector.png'),"Voucher code available"),
                            NewWidget(Image.asset('assets/images/Vector (2).png'),"Pay at your place"),
                            ]),
                        ],
                      ),
                    )
                  
                  ],
                )),
                
          ],
        ),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget NewWidget(Widget image,String data) => Row(
      children: [
        image,
        Text(data)
      ],
    );
