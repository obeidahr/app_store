import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/pages/get_started.dart';

import '../widgets/stack1.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 205, 178, 1),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Container(
                    //color: Colors.black,
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Color.fromRGBO(181, 131, 141, 1),blurRadius: 20)
                      ]
                    ),
                    child: const CircleAvatar(
                      backgroundColor: Color.fromRGBO(255, 180, 162, 1),
                      radius: 23.0,
                      child: Text("logo",style: TextStyle(fontSize: 14,color: Colors.white,)),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 13,),
            const Text("Accessories Store"),
            const Stack(
              children: [
                Positioned(
                left: 159,
                top: 115,
                child: 
                CircleAvatar(
                  backgroundColor: Color.fromRGBO(255, 180, 162, 1),
                    radius: 23.0,
                ),
              ),
              stack1(),
              ],
            ),
            const Text("The best jewelry in\n    TheTown Now",style: TextStyle(color: Color.fromRGBO(109, 104, 117, 1),fontSize: 25,fontWeight: FontWeight.bold,),),
            Padding(
              padding: const EdgeInsets.only(right: 10,left: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 5,
                    width: 30,
                    color: const Color(0xFFB5838D),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: MaterialButton( 
                      height: 40,
                      onPressed: ()
                      {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const GetStarted(),
                          ));},
            
                    color: const Color.fromRGBO(181, 131, 141, 1),
                    child: 
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Get Start",style: TextStyle(color: Colors.white),),
                        Icon(Icons.keyboard_double_arrow_right,color: Colors.white,)
                      ],
                    )),
                  )
                ],
              ),
            )
            
          ],
        ),
      ),
    );
  }
}

