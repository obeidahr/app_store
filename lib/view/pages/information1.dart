import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/pages/main-layout.dart';
import '../../shared/components.dart';

class Information1 extends StatefulWidget {
  const Information1({super.key});

  @override
  State<Information1> createState() => _Information1State();
}

class _Information1State extends State<Information1> {
   bool _showTextForm = false;
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
      body: Padding(
        padding: const EdgeInsets.only(bottom:8.0),
        child: SingleChildScrollView(
          child: Column(
              children: [
                SizedBox(
                  width: 300,
                  height: 500,
                  child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text("Enter the delivery\naddress",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                        defaultFormField(controller: controller, type: TextInputType.streetAddress, label: "First",hintTex: "First Name"),
                        const SizedBox(height: 10,),
                        defaultFormField(controller: controller, type: TextInputType.streetAddress, label: "First",hintTex: "Last Name"),
                        const SizedBox(height: 10,),
                        defaultFormField(controller: controller, type: TextInputType.streetAddress, label: "First",hintTex: "Address"),
                        const SizedBox(height: 10,),
                        defaultFormField(controller: controller, type: TextInputType.streetAddress, label: "First",hintTex: "City"),
                        const SizedBox(height: 10,),
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
                        const SizedBox(height: 15,),
                        if (!_showTextForm) 
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              side: const BorderSide(width: 2,color: Colors.grey, )
                            ),
                            onPressed: (){
                              setState(() {
                              _showTextForm = true;
                            });
                            },
                          child: const Text("Add Notes")
                          ),
                        if (_showTextForm)
                            TextFormField(
                              maxLines: 3,
                            
                              decoration: const InputDecoration(
                                hintText: "add to note",
                                border: OutlineInputBorder(),
                              ),
                          ),
                      ],
                    ),
                ),
                Center(
                  child: defaultButton(
                    function: (){
                      navigateAndFinish(context, const MainLayout());
                    }, 
                    text:"Save",
                    width: 300
                  )
                ),
              ],
            ),
        ),
      ),
    );
  }
}