import 'package:flutter/material.dart';

// ignore: camel_case_types
class stack1 extends StatelessWidget {
  const stack1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 9,right: 10,top: 10),
      child: SizedBox(
        height: 400,
        child: Stack(
            alignment: Alignment.topLeft,
            children:[ 
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 180,
                      height: 250,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(100),topRight: Radius.circular(100)),
                        image: DecorationImage(
                          image: AssetImage("assets/images/start1.png"),
                        ), 
                      ),
                    ),
                  ],
                ),
              Positioned(
                left: 123,
                top: 108,
                child: SizedBox(
                  width: 220,
                  child: Image.asset("assets/images/Mask group.png")))
            ]),
      ),
    );
  }
}