import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/pages/check_out1.dart';

import '../../shared/components.dart';

class FailedPage extends StatelessWidget {
  const FailedPage({super.key});

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
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                Image.asset('assets/images/Group 49 (1).png'),
                const Text('Order Failed',style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),),
                const Text('Your payment occurred an error',style: TextStyle(
                  //fontSize: 25,
                  //fontWeight: FontWeight.bold
                ),)
              ],
                ),
            ),
            const SizedBox(height: 19),
            const Icon(Icons.stop_circle_outlined),
            const SizedBox(height: 15,),
            const Text("Do not worry 😉"),
            const SizedBox(height: 20,),
            const Text('''Keep calm, sometimes it happens\nPlease go back and check your\n payment method or contact us'''),
            Center(
                    child: defaultButton(
                      function: (){
                        navigateAndFinish(context, const CheckOut1());
                      }, 
                      text:"Review Payment Method",
                      width: 300
                    )
                  ),
                  const SizedBox(height: 20,),
              MaterialButton(
                        onPressed: (){
                          
                        },
                        minWidth: 300,
                        height: 50,
                        color: const Color(0xFF736363),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: const Text("Please... I need Help",style: TextStyle(
                          fontSize: 19,color: Colors.white
                        ),),
                    ),
          ],
        ),
      ),
    );
  }
}