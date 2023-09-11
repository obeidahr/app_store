import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/pages/main-layout.dart';

import '../../shared/components.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Order Complete"),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_circle_left_outlined,
              size: 40,
            )),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 120),
        child: Column(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/Group 49.png'),
                const Text('Payment Successful!',style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),),
                const Text('Order #100 will arrive in 1 hour',style: TextStyle(
                  //fontSize: 25,
                  //fontWeight: FontWeight.bold
                ),)
              ],
                ),
            ),
            const SizedBox(height: 100,),
            Center(
                    child: defaultButton(
                      function: (){
                       navigateAndFinish(context, const MainLayout());
                      }, 
                      text:"See Order details",
                      width: 300
                    )
                  ),
                  const SizedBox(height: 20,),
              MaterialButton(
                        onPressed: (){
                          navigateTo(context, const MainLayout());
                        },
                        minWidth: 300,
                        height: 50,
                        color: const Color(0xFF736363),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: const Text(" Continue Shopping ",style: TextStyle(
                          fontSize: 19,color: Colors.white
                        ),),
                    ),
          ],
        ),
      ),
    );
  }
}