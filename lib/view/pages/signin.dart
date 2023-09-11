import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/components.dart';
import 'package:flutter_application_1/view/pages/forget_password.dart';


class SignIn extends StatelessWidget {
  const SignIn({super.key});

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
                  Text("Let's Sign you in",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  Text("Welcome back!, you;ve been missed!",style: TextStyle(fontSize: 12),),
                ],
              ),
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 170,
                  width: 280,
                  //color: Colors.black,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Username or Email",style: TextStyle(fontSize: 10),),
                      // defaultFormField(
                      //   controller: controller,
                      //   type: TextInputType.emailAddress, 
                      //   label: "Enter your email", 
                      //   prefix: const Icon(Icons.email_outlined),
                      //   hintTex: "......@gmail.com",
                      //   suffixPressed: (){}
                      // ),
                      //const SizedBox(height: 10,),
                       //const Text("Username",style: TextStyle(fontSize: 10),),
                      defaultFormField(
                        controller: controller,
                        type: TextInputType.emailAddress, 
                        label: "Enter your email", 
                        prefix: const Icon(Icons.perm_identity),
                        hintTex: "",
                        suffixPressed: (){}
                      ),
                      const SizedBox(height: 20,),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Row(
                  children: [
                    Icon(Icons.check_box_outlined),
                    Text("Remember me")
                  ],
                ),
                TextButton(
                  onPressed: (){
                    navigateTo(context, const ForgetPassword());
                  },
                child: 
                const Text("Forget password",style: TextStyle(decoration: TextDecoration.underline),)
                ),
              ],
            ),
            const SizedBox(height: 50,),
            Container(
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  defaultButton(function: (){}, text:"Sign In",width: 300),
                  //const SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?"),
                      defaultTextButton(function: (){
                        Navigator.pop(context);
                      }, text: "Sign up")
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
                ],
              )),
          ],
        ),
      ),
    );
  }
}