import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/components.dart';
import 'package:flutter_application_1/view/pages/verification.dart';


class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = TextEditingController();
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding:const EdgeInsets.only(left: 15),
            height: 80,
            width: 306,
            //color: Colors.black,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Password Recovery",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                Text("Enter your number phone to recover\n your password",style: TextStyle(fontSize: 12),),
              ],
            ),
          ),
          const SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 140,
                width: 280,
                //color: Colors.black,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("phone number",style: TextStyle(fontSize: 10),),
                    
                    defaultFormField(
                      controller: controller,
                      type: TextInputType.number,
                      label: "Enter your email", 
                      prefix: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text("+963"),
                      ),
                      suffix: const Icon(Icons.check,color: Colors.green,),
                      hintTex: "952475245",
                      suffixPressed: (){}
                    ),
                  ],
                ),
              ),
            ],
          ),
          // const Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     Row(
          //       children: [
          //         Icon(Icons.check_box_outlined),
          //         Text("Remember me")
          //       ],
          //     ),
          //     Text("Forget password",style: TextStyle(decoration: TextDecoration.underline),)
          //   ],
          // ),
          //const SizedBox(height: 50,),
          Container(
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                defaultButton(function: (){
                  navigateTo(context, const Verification());
                }, text:"Continue",width: 300),
                //const SizedBox(height: 8,),
                
                
              ],
            )),
        ],
      ),
    );
  }
}