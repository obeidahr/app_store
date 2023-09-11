import 'package:flutter/material.dart';

import 'home.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(Icons.favorite_border,size: 35,),
          SizedBox(width: 15,),
        ],
        title: const Text("My Favorite"),
        centerTitle: true,
        leading: IconButton(
            onPressed: (){
            Navigator.pop(context);
          }, 
            icon: 
              const Icon(Icons.arrow_circle_left_outlined,size: 40,)
          ),
      ),
      body: Container(
                padding: const EdgeInsets.all(20),
                child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      children: List.generate(7, (index) {
                          return const itemWidget();
                        },),
                    ),
              ),
    );
  }
}