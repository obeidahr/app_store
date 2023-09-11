// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/pages/information1.dart';
import '../../shared/components.dart';

class DonePage extends StatelessWidget {
  const DonePage({super.key});

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Column(
              children: [
                SizedBox(
                  width: 150,
                  height: 150,
                  child: Stack(
        children: <Widget>[
          Center(
              child: ClipOval(
            child: Container(
              color: Color.fromRGBO(226, 178, 180, 0.6),
              height: 150.0, // height of the button
              width: 150.0, // width of the button
            ),
          )),
          Center(
              child: 
            ClipOval(
              child: Container(
                //color: Colors.green,
                height: 120.0, // height of the button
                width: 120.0, // width of the button
                decoration: BoxDecoration(
                    color: const Color(0xFFE5989B),
                    border: Border.all(
                        color: Color(0xFFECB5B7),
                        width: 10.0,
                        style: BorderStyle.solid),
                    // boxShadow: [
                    //   BoxShadow(
                    //       color: Colors.grey,
                    //       offset: Offset(21.0, 10.0),
                    //       blurRadius: 20.0,
                    //       spreadRadius: 40.0)
                    // ],
                    shape: BoxShape.circle),
                child: const Center(
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 60,
                      
                      )),
              ),
            ),
          )
        ],
    ),
                ),
                SizedBox(height: 20,),
                const Text("Phone Verified",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
                const Text("Configure Successfully",style: TextStyle(fontSize: 15),),
              ],
            ),
          ),
          const SizedBox(height: 30,),
          defaultButton(function: (){
            navigateTo(context, const Information1());
          }, text:"Done",width: 300)
        ],
      ),
    );
  }
}