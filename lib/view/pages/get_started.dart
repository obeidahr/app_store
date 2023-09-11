import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/components.dart';
import 'package:flutter_application_1/view/pages/signin.dart';


class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding:const EdgeInsets.only(left: 15),
              height: 60,
              width: 306,
              //color: Colors.black,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Getting Started",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  Text("Creat an account to continue!",style: TextStyle(fontSize: 12),),
                ],
              ),
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 228,
                  width: 280,
                  //color: Colors.black,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Enter your Email",style: TextStyle(fontSize: 10),),
                      defaultFormField(
                        controller: controller,
                        type: TextInputType.emailAddress, 
                        label: "Enter your email", 
                        prefix: const Icon(Icons.email_outlined),
                        hintTex: "......@gmail.com",
                        suffixPressed: (){}
                      ),
                      const SizedBox(height: 10,),
                       const Text("Username",style: TextStyle(fontSize: 10),),
                      defaultFormField(
                        controller: controller,
                        type: TextInputType.emailAddress, 
                        label: "Enter your email", 
                        prefix: const Icon(Icons.perm_identity),
                        hintTex: "ex: kdvd",
                        suffixPressed: (){}
                      ),
                      const SizedBox(height: 10,),
                       const Text("Password",style: TextStyle(fontSize: 10),),
                      defaultFormField(
                        controller: controller,
                        type: TextInputType.number,
                        label: "Enter your email", 
                        prefix: const Icon(Icons.panorama_photosphere_select_sharp),
                        suffix: const Icon(Icons.visibility_outlined),
                        hintTex: "********",
                        suffixPressed: (){}
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.check_box_outlined),
                Text("By creating an account, you agree to our\n term & Conditions")
              ],
            ),
            Container(
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  defaultButton(function: (){}, text:"Sign Up",width: 300),
                  //const SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already have an account?"),
                      defaultTextButton(function: (){
                        navigateTo(context,const SignIn());
                      }, text: "Sign in")
                    ],
                  ),
                  //const SizedBox(height: 20,),
                  myDivider(),
                  const SizedBox(height: 20,),
                  //defaultButton(function: (){}, text:"Connect with facebook",width: 300),
                  // ignore: sized_box_for_whitespace
                  Container(
                    width: 300,
                    child: MaterialButton(
                      color: Colors.blue,
                      height: 50,
                      //shape: ,
                      child: Row(
                        children: [
                          Image.asset("assets/images/Fill 1.png"),
                          const SizedBox(width: 40,),
                          const Text("Connect with Facebook")
                        ],
                      ),
                      onPressed: (){}),
                  )
                  // ElevatedButton.icon(
                  //   style: ElevatedButton.styleFrom(
                  //     backgroundColor: Colors.blue,
                      
                  //   ),
                  //   onPressed: (){}, icon: Image.asset("assets/images/Fill 1.png"), label: Text("Connect with Faceboo"))
                ],
              )),
          ],
        ),
      ),
    );
  }
}