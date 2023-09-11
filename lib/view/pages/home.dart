// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/components.dart';
import 'package:flutter_application_1/view/pages/product.dart';

import '../../shared/constant.dart';
import 'filter.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        leadingWidth: 110,
        leading: const Padding(
          padding: EdgeInsets.only(left:13.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.dehaze_rounded,
                color: Color(0xFFB5838D),
                size: 40,
                ),
                Text('Welcome,here')
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:5.0),
            child: Stack(
              alignment: Alignment.center,
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage("assets/images/Ellipse 2.png"),
                ),
                Image.asset('assets/images/Ellipse 3.png'),
                Image.asset('assets/images/Ellipse 4.png'),
              ],
            ),
          )
        ],
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 280,
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search Products',
                      
                        suffixIcon: const Icon(Icons.audiotrack),
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                                  ),
                  ),
                  const SizedBox(width: 7,),
                  GestureDetector(
                    onTap: (){
                      //navigateTo(context, const FilterPage());
                      showModalBottomSheet(
                        context: context, 
                        //isScrollControlled: true,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20)
                          )
                        ),
                        builder: (context) => const FilterPage());
                    },
                    child: Container(
                      height: 43,
                      width: 39,
                      decoration: BoxDecoration(
                        color: Constant().main2,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Image.asset('assets/images/carbon_settings-adjust.png'),
                  //const Icon(Icons.settings_input_composite_outlined,color: Colors.white,),
                    ),
                  )
                ],
              ),
            ),
          ),
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          children: [
            Column(
                children: [
                  Container(
                    height: 190,
                    //width: 430,
                    child: Stack(
                      children:[
                         Image.asset("assets/images/Group 45.png"),
                         Positioned(
                          left: 190,
                          top: 35,
                          child:Column(
                            children: [
                              const Text("Discount of all types of\nacccoubbk",style: TextStyle(color: Colors.white),),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFE5989B), // Set the desired fill color
                                  ),
                                onPressed: (){}, child: const Text("Up to 30%")),
                                const Text("only on the night sell",style: TextStyle(color: Colors.white))
                            ],
                          ) 
                          ),
                         
                         ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:15.0),
                    child: Container(
                      width: double.infinity,
                      //color: Colors.blue,
                      height: 30,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children:[ 
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              backgroundColor: const Color(0xFFE5989B), // Set the desired fill color
                            ),
                              // style: OutlinedButton.styleFrom(
                              //   shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular()),
                              //   side:  BorderSide(width: 0,color: Colors.grey)
                              // ),
                              onPressed: (){},
                              child: const Text("All"),
                          ),
                          const SizedBox(width: 20,),
                          OutlinedButton(
                              // style: OutlinedButton.styleFrom(
                              //   shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular()),
                              //   side:  BorderSide(width: 0,color: Colors.grey)
                              // ),
                              onPressed: (){},
                              child: const Text("Bags"),
                          ),
                          const SizedBox(width: 20,),
                          OutlinedButton(
              
                              // style: OutlinedButton.styleFrom(
                              //   shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular()),
                              //   side:  BorderSide(width: 0,color: Colors.grey)
                              // ),
                              onPressed: (){},
                              child: const Text("Bings"),
                          ),
                          const SizedBox(width: 20,),
                          OutlinedButton(
                              // style: OutlinedButton.styleFrom(
                              //   shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular()),
                              //   side:  BorderSide(width: 0,color: Colors.grey)
                              // ),
                              onPressed: (){},
                              child: const Text("necklec"),
                          ),
                          const SizedBox(width: 20,),
                          OutlinedButton(
                              // style: OutlinedButton.styleFrom(
                              //   shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular()),
                              //   side:  BorderSide(width: 0,color: Colors.grey)
                              // ),
                              onPressed: (){},
                              child: const Text("All"),
                          ),
                          const SizedBox(width: 20,),
                          OutlinedButton(
                              // style: OutlinedButton.styleFrom(
                              //   shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular()),
                              //   side:  BorderSide(width: 0,color: Colors.grey)
                              // ),
                              onPressed: (){},
                              child: const Text("All"),
                          ),
                          const SizedBox(width: 20,),
                          OutlinedButton(
                              // style: OutlinedButton.styleFrom(
                              //   shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular()),
                              //   side:  BorderSide(width: 0,color: Colors.grey)
                              // ),
                              onPressed: (){},
                              child: const Text("All"),
                          ),                    
                          ])
                      ),
                  ),
                  //const SizedBox(height: 10,),
                    
                ],
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      children: List.generate(7, (index) {
                          return const itemWidget();
                        },),
                    ),
              )
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class itemWidget extends StatelessWidget {
  const itemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 160,
      //color: Colors.amber,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //const SizedBox(height: 85,),
          GestureDetector(
            onTap: (){
              navigateTo(context, const ProductPage());
            },
            child: Container(
              height: 85,
              child: Image.asset('assets/images/Rectangle 23.png')),
          ),
          Container(
            padding: const EdgeInsets.only(left: 10,right: 8),
            child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Rings",style: TextStyle(fontWeight: FontWeight.bold),),
                  Icon(Icons.favorite,color: Color(0xFFE5989B),)
                ],
          ),
          Text("Cream fvfknd"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('\$10'),
              Icon(Icons.keyboard_double_arrow_right_outlined)
            ],
          ),
              ])
          )
        ],
      ),
    );
  }
}