import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/pages/failed.dart';
import 'package:flutter_application_1/view/pages/map.dart';
import 'package:flutter_application_1/view/pages/success.dart';

import '../../shared/components.dart';

class CheckOut1 extends StatefulWidget {
  const CheckOut1({super.key});

  @override
  State<CheckOut1> createState() => _CheckOut1State();
}

class _CheckOut1State extends State<CheckOut1> {
  int currentStep = 0;
  bool _showTextForm = false;

  @override
  Widget build(BuildContext context) {
    //TextEditingController controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_circle_left_outlined,
              size: 40,
            )),
      ),
      body: Stepper(
        controlsBuilder: (context, details) {
          if (currentStep == 2) {
            return Row(
              children: [
                MaterialButton(
                  onPressed: (){
                    navigateTo(context, const FailedPage());
                  },
                  minWidth: 130,
                  height: 50,
                  color: const Color(0xFFB5838D),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    " Cancel Order",
                    style: TextStyle(fontSize: 19, color: Colors.white),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    navigateTo(context, const SuccessPage());
                  },
                  minWidth: 150,
                  height: 50,
                  color: const Color(0xFFB5838D),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    " Continue Order",
                    style: TextStyle(fontSize: 19, color: Colors.white),
                  ),
                ),
              ],
            );
          }
          if (currentStep == 1) {
            return Center(
                child: MaterialButton(
              onPressed: details.onStepContinue,
              minWidth: 300,
              height: 50,
              color: const Color(0xFFB5838D),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: const Text(
                "Continue to Order Check",
                style: TextStyle(fontSize: 19, color: Colors.white),
              ),
            ));
          }
          return Center(
              child: MaterialButton(
            onPressed: details.onStepContinue,
            minWidth: 300,
            height: 50,
            color: const Color(0xFFB5838D),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: const Text(
              "Continue to Payment",
              style: TextStyle(fontSize: 19, color: Colors.white),
            ),
          ));
        },
        elevation: 0,
        onStepContinue: () {
          setState(() {
            if (currentStep < 2) {
              currentStep += 1;
            }
          });
        },
        onStepCancel: () {
          setState(() {
            if (currentStep > 0) {
              currentStep -= 1;
            }
          });
        },
        type: StepperType.horizontal,
        steps: getSteps(),
        currentStep: currentStep,
      ),
    );
  }

  List<Step> getSteps() => [
        Step(
            isActive: currentStep == 0,
            label: const Text(
              'Delivery',
              style: TextStyle(fontSize: 10),
            ),
            title: const Text(''),
            content: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 300,
                  height: 420,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "Check your address",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      //const Text("Enter the delivery\naddress",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                      defaultFormField(
                          //controller: controller,
                          type: TextInputType.streetAddress,
                          label: "First",
                          hintTex: "First Name"),
                      const SizedBox(
                        height: 10,
                      ),
                      defaultFormField(
                          //controller: controller,
                          type: TextInputType.streetAddress,
                          label: "First",
                          hintTex: "Last Name"),
                      const SizedBox(
                        height: 10,
                      ),
                      defaultFormField(
                          //controller: controller,
                          type: TextInputType.streetAddress,
                          label: "First",
                          hintTex: "Address"),
                      const SizedBox(
                        height: 10,
                      ),
                      WidgetRow(
                          str: 'Select city on map',
                          onPressed: () =>
                              navigateTo(context, const MapPage())),
                      // defaultFormField(
                      //   //controller: controller,
                      //   type: TextInputType.streetAddress, label: "First",hintTex: "Seclect the city"),
                      //const SizedBox(height: 10,),
                      myDivider(),
                      defaultFormField(
                          //controller: controller,
                          type: TextInputType.number,
                          label: "Enter your email",
                          prefix: const Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text("+963"),
                          ),
                          //suffix: const Icon(Icons.check,color: Colors.green,),
                          hintTex: "952475245",
                          suffixPressed: () {}),
                      const SizedBox(
                        height: 15,
                      ),
                      if (!_showTextForm)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                    shape: ContinuousRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    side: const BorderSide(
                                      width: 2,
                                      color: Colors.grey,
                                    )),
                                onPressed: () {
                                  setState(() {
                                    _showTextForm = true;
                                  });
                                },
                                child: const Text("Add Notes")),
                            OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                    shape: ContinuousRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    side: const BorderSide(
                                      width: 2,
                                      color: Colors.grey,
                                    )),
                                onPressed: () {
                                  setState(() {
                                    _showTextForm = true;
                                  });
                                },
                                child: const Text("Update")),
                          ],
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
                // Center(
                //   child: MaterialButton(
                //     onPressed: (){},
                //     minWidth: 300,
                //     height: 50,
                //     color: const Color(0xFFB5838D),
                //     shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(10)
                //     ),
                //     child: const Text("continue to payment",style: TextStyle(
                //       fontSize: 19,color: Colors.white
                //     ),),
                //   )
                // ),
              ],
            )),
        Step(
          isActive: currentStep == 1,
          title: const Text(''),
          label: const Text(
            'payment',
            style: TextStyle(fontSize: 10),
          ),
          content: const CheckOut2(),
        ),
        Step(
            isActive: currentStep == 2,
            title: const Text(''),
            label: const Text(
              'order check',
              style: TextStyle(fontSize: 10),
            ),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'order check',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Shipping address",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text(
                            "Ranim Omar\nDamascus-Alkaza-srt.x\n, 28294\n+963 997555668"),
                        Text(
                          "Express Delivery",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text("1 -2 Hours")
                      ],
                    ),
                    OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            shape: ContinuousRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            side: const BorderSide(
                              width: 2,
                              color: Colors.grey,
                            )),
                        onPressed: () {
                          setState(() {
                            _showTextForm = true;
                          });
                        },
                        child: const Text("Update")),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                myDivider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.edit_square))
                  ],
                ),
                //SizedBox(height: 10,),
                Row(
                  children: [
                    Image.asset('assets/images/Rectangle 23.png'),
                    const SizedBox(
                      width: 15,
                    ),
                    Image.asset('assets/images/Rectangle 23.png'),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                myDivider(),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 150,
                  width: 330,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "SubTotal ( 2 product)",
                            style: TextStyle(fontSize: 15),
                          ),
                          Text(
                            "\$524",
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Delivery fee",
                            style: TextStyle(fontSize: 15),
                          ),
                          Text(
                            "\$58552",
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "\$354684",
                            style: TextStyle(fontSize: 22),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ];
}

class CheckOut2 extends StatelessWidget {
  const CheckOut2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Choose Payment",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            Text("Id 100")
          ],
        ),
        //WidgetRow(str: 'Credit/Debit card'),
        ExpansionTile(title: const Text('credit cart'), children: [
          Container(
            width: 315,
            height: 350,
            color: const Color(0xFFEEEEEE),
            child: Column(
              children: [
                //color(0xFF6D6875)
                Container(
                  height: 40,
                  color: const Color(0xFF6D6875),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset('assets/images/lock-fill 1.png'),
                      const Text(
                        "This is a secure 128-bit SSL Encrypted payment. You’re safe",
                        style: TextStyle(color: Colors.white, fontSize: 8),
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Image.asset('assets/images/download (1) 1.png'),
                        const SizedBox(
                          width: 10,
                        ),
                        Image.asset('assets/images/download (2) 1.png'),
                        const SizedBox(
                          width: 10,
                        ),
                        Image.asset('assets/images/download (3) 1.png'),
                        const SizedBox(
                          width: 10,
                        ),
                        Image.asset('assets/images/download (4) 1.png'),
                      ],
                    ),
                    defaultFormField(
                        type: TextInputType.streetAddress,
                        label: "First",
                        hintTex: "Card Number"),
                    const SizedBox(
                      height: 10,
                    ),
                    defaultFormField(
                        type: TextInputType.streetAddress,
                        label: "First",
                        hintTex: "Name on card"),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                            width: 200,
                            child: ExpansionTile(title: Text('Exp MM/YYYY'))),
                        SizedBox(
                            width: 110,
                            child: defaultFormField(
                                type: TextInputType.streetAddress,
                                label: "First",
                                hintTex: "CVV")),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "You will not be charged until the order process is complete",
                      style: TextStyle(fontSize: 8),
                    )
                  ],
                ),
                const Spacer(),
                Container(
                    height: 40,
                    color: const Color(0xFF6D6875),
                    child: const Center(
                        child: Text(
                      "Order Check",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )))
              ],
            ),
          )
        ]),
        myDivider(),
        //WidgetRow(str: 'Via Bank tranfer'),
        ExpansionTile(
          title: const Text('via Bank tranfer'),
          children: [
            Container(
            width: 315,
            height: 330,
            color: const Color(0xFFEEEEEE),
            child: Column(
              children: [
                Container(
                  height: 40,
                  color: const Color(0xFF6D6875),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset('assets/images/lock-fill 1.png'),
                      const Text(
                        "This is a secure 128-bit SSL Encrypted payment. You’re safe",
                        style: TextStyle(color: Colors.white, fontSize: 8),
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    defaultFormField(
                        type: TextInputType.streetAddress,
                        label: "First",
                        hintTex: "Account Holder"),
                    const SizedBox(
                      height: 10,
                    ),
                    defaultFormField(
                        type: TextInputType.streetAddress,
                        label: "First",
                        hintTex: "Account Number"),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                            width: 200,
                            child: ExpansionTile(title: Text('Exp MM/YYYY'))),
                        SizedBox(
                            width: 110,
                            child: defaultFormField(
                                type: TextInputType.streetAddress,
                                label: "First",
                                hintTex: "Ref")),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "You will not be charged until the order process is complete",
                      style: TextStyle(fontSize: 8),
                    )
                  ],
                ),
                const Spacer(),
                Container(
                    height: 40,
                    color: const Color(0xFF6D6875),
                    child: const Center(
                        child: Text(
                      "Order Check",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )))
              ],
            ),
          )
          ],
        ),
        myDivider(),
        //WidgetRow(str: 'Via Alharam'),
        ExpansionTile(
          title: const Text('Via Alharam'),
          children: [
            Container(
            width: 315,
            height: 330,
            color: const Color(0xFFEEEEEE),
            child: Column(
              children: [
                //color(0xFF6D6875)
                Container(
                  height: 40,
                  color: const Color(0xFF6D6875),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset('assets/images/lock-fill 1.png'),
                      const Text(
                        "This is a secure 128-bit SSL Encrypted payment. You’re safe",
                        style: TextStyle(color: Colors.white, fontSize: 8),
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    // const SizedBox(
                    //   height: 20,
                    // ),
                    // Row(
                    //   children: [
                    //     Image.asset('assets/images/download (1) 1.png'),
                    //     const SizedBox(
                    //       width: 10,
                    //     ),
                    //     Image.asset('assets/images/download (2) 1.png'),
                    //     const SizedBox(
                    //       width: 10,
                    //     ),
                    //     Image.asset('assets/images/download (3) 1.png'),
                    //     const SizedBox(
                    //       width: 10,
                    //     ),
                    //     Image.asset('assets/images/download (4) 1.png'),
                    //   ],
                    // ),
                    defaultFormField(
                        type: TextInputType.streetAddress,
                        label: "First",
                        hintTex: "Account Holder"),
                    const SizedBox(
                      height: 10,
                    ),
                    defaultFormField(
                        type: TextInputType.streetAddress,
                        label: "First",
                        hintTex: "Branch"),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                            width: 200,
                            child: ExpansionTile(title: Text('Exp MM/YYYY'))),
                        SizedBox(
                            width: 110,
                            child: defaultFormField(
                                type: TextInputType.streetAddress,
                                label: "First",
                                hintTex: "Ref")),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "You will not be charged until the order process is complete",
                      style: TextStyle(fontSize: 8),
                    )
                  ],
                ),
                const Spacer(),
                Container(
                    height: 40,
                    color: const Color(0xFF6D6875),
                    child: const Center(
                        child: Text(
                      "Order Check",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )))
              ],
            ),
          )
          ],
        ),
        myDivider(),
        const SizedBox(
          height: 20,
        ),
        const Text("Please attachment your payment"),
        const NewWidget()
      ],
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xFFFBF0F0),
          borderRadius: BorderRadius.circular(15)),
      width: 390,
      height: 121,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Image.asset('assets/images/i.png'),
        Image.asset('assets/images/Component 1.png'),
        //SizedBox(width: 10,),
      ]),
    );
  }
}
