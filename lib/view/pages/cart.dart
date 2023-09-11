import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/components.dart';
import 'package:flutter_application_1/view/pages/check_out1.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Icon(
                Icons.shopping_cart,
                size: 35,
              ),
              CircleAvatar(
                backgroundColor: Color(0xFFE5989B),
                radius: 10,
                child: Text("2"),
              )
            ],
          ),
          SizedBox(
            width: 15,
          ),
        ],
        title: const Text("My Cart"),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_circle_left_outlined,
              size: 40,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const NewWidget(),
              const SizedBox(
                height: 10,
              ),
              const NewWidget(),
              const SizedBox(
                height: 40,
              ),
              myDivider(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Order info",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  // ignore: sized_box_for_whitespace
                  Container(
                    height: 150,
                    width: 330,
                    child: const Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Sub total",
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
                              "Sub total",
                              style: TextStyle(fontSize: 15),
                            ),
                            Text(
                              "\$58552",
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
                              "Sub total",
                              style: TextStyle(fontSize: 15),
                            ),
                            Text(
                              "\$354684",
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
                  Center(
                      child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFB5838D),
                          ),
                          onPressed: () {
                            navigateTo(context, const CheckOut1());
                          },
                          icon: const Text(
                            "Check Out",
                            style: TextStyle(color: Colors.white,fontSize: 21),
                          ),
                          label: const Icon(Icons.keyboard_double_arrow_right,color: Colors.white,)))
                ],
              )
            ],
          ),
        ),
      ),
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
      child: Row(
        children: [
          Stack(children: [
            Image.asset("assets/images/Rectangle 23.png"),
            Positioned(
                top: 85, child: Image.asset("assets/images/Ellipse 18.png")),
          ]),
          const SizedBox(
            width: 10,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Bags",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("Antela"),
              SizedBox(
                height: 20,
              ),
              Text("\$ 424872"),
            ],
          ),
          const SizedBox(
            width: 30,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Icon(
                Icons.restore_from_trash,
                size: 30,
              ),
              Row(
                children: [
                  TextButton(onPressed: () {}, child: const Text('-')),
                  const Text("2"),
                  TextButton(onPressed: () {}, child: const Text('+')),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
