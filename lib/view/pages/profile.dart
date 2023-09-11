import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/components.dart';
import 'package:flutter_application_1/view/pages/about.dart';

import 'chating.dart';
import 'order_history.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
            Navigator.pop(context);
          }, 
            icon: 
              const Icon(Icons.arrow_circle_left_outlined,size: 40,)
          ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  Stack(
                    children: [
                      const CircleAvatar(
                    radius: 75,
                    backgroundImage: AssetImage("assets/images/Ellipse 2.png"),
                      
                    ),
                    Positioned(
                      right: 1,
                      bottom: 2,
                      child: CircleAvatar(
                        radius: 25,
                        child: Center(child: IconButton(onPressed: (){}, icon: const Icon(Icons.camera_alt_outlined,size: 30,)))))
                    ],
                  ),
                  const SizedBox(height: 30,),
                  const Text("Rkdfnd",style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold),),
                  const Text("obeida@gmail.com",style: TextStyle(fontSize: 22,),),
                ],
              ),
            ),
            WidgetRow(str: 'Order History',onPressed: () => navigateTo(context,const OrderHistory()),),
            myDivider(),
            WidgetRow(str: 'My address'),
            myDivider(),
            WidgetRow(str: 'My Wallet'),
            myDivider(),
            WidgetRow(str: 'Settings'),
            myDivider(),
            WidgetRow(str: 'Chat with store',onPressed: () => navigateTo(context,const ChatingPage()),),
            myDivider(),
            WidgetRow(str: 'About store',onPressed: ()=>navigateTo(context, const AboutPage())),
            myDivider(),
            WidgetRow(str: 'Log Out',onPressed: () => showAlertDialog(context)),
            myDivider(),
            const SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}

