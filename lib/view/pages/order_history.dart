import 'package:flutter/material.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Order History"),
        centerTitle: true,
        leading: IconButton(
            onPressed: (){
            Navigator.pop(context);
          }, 
            icon: 
              const Icon(Icons.arrow_circle_left_outlined,size: 40,)
          ),
      ),
      body: Padding(
                    padding: const EdgeInsets.only(left:15.0),
                    child: Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          //color: Colors.blue,
                          height: 30,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children:[ 
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
                                  child: const Text("Bags"),
                              ),
                              const SizedBox(width: 20,),
                              OutlinedButton(
              style: OutlinedButton.styleFrom(
                                  backgroundColor: const Color(0xFFE5989B), // Set the desired fill color
                                ),
                                  // style: OutlinedButton.styleFrom(
                                  //   shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular()),
                                  //   side:  BorderSide(width: 0,color: Colors.grey)
                                  // ),
                                  onPressed: (){},
                                  child: const Text("Done"),
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
                          const SizedBox(height: 20,),
                          const NewWidget(),
                          const SizedBox(height: 20,),
                          const NewWidget(),
                      ],
                    ),
                  ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xFFFBF0F0),
          borderRadius: BorderRadius.circular(15)),
      width: 390,
      height: 121,
      child: Row(
        children: [
          
          
          const Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("TODAY, 12:10 AM",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              Text("Ranim Omar\nDamascus-Alkaza-srt.x\n28294\n+963 997555668")
            ],
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
                height: 30,
              ),
              Text("(1 items)"),
            ],
          ),
          const SizedBox(
            width: 30,
          ),
          Stack(children: [
            Image.asset("assets/images/Rectangle 23.png"),
            Positioned(
                top: 85, child: Image.asset("assets/images/Ellipse 18.png")),
          ]),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
