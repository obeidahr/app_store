import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/pages/done_page.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import '../../shared/components.dart';
import '../../shared/constant.dart';

class Verification extends StatelessWidget {
  const Verification({super.key});
  
  @override
  Widget build(BuildContext context) {
    //var controller = TextEditingController();
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
            Container(
              padding:const EdgeInsets.only(left: 15),
              height: 80,
              width: 306,
              //color: Colors.black,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("OTP Authentication",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  Text("an authentication code to\n send to (+963 58483477)",style: TextStyle(color: Constant().main,fontSize: 12),),
                ],
              ),
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 150,
                  width: 280,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      OtpTextField(
                        fieldWidth: 60,
                        borderRadius: BorderRadius.circular(20),
                        numberOfFields: 4,
                        //borderColor: const Color(0xFF512DA8),
                        //set to true to show as box or false to show as dash
                        //showFieldAsBox: true,
                        //runs when a code is typed in
                        onCodeChanged: (String code) {
                          //handle validation or checks here
                        },
                        //runs when every textfield is filled
                        onSubmit: (String verificationCode) {
                          //controller.goToResetPassword(verificationCode);
                        }, // end onSubmit
                      ), 
                      const SizedBox(height: 23,),
                      Text("Didn't recieve the SMS?",style:TextStyle(color: Constant().main)),
                      const SizedBox(height: 12,),
                      const Text("Request New Code in 05:00"),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  defaultButton(
                    function: (){
                      navigateTo(context,const DonePage());}, 
                    text:"Verify your phone",
                    width: 300),
                ],
              )),
          ],
        ),
      ),
    );
  }
}