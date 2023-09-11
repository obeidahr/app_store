import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About"),
        centerTitle: true,
        leading: IconButton(
            onPressed: (){
            Navigator.pop(context);
          }, 
            icon: 
              const Icon(Icons.arrow_circle_left_outlined,size: 40,)
          ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          children: [
            Text('''Mari Bosa is part of the Global Fashion Group, the world's leading fashion group. Founded in 2020 and dedicated to creating online fashion companies in developing countries. To date, Global Fashion Group operates in 27 countries. Global Fashion Group has a presence in Indonesia, South East, South America and Europe. Through MARI BOSA, Global Fashion Group is able to access markets in Southeast Asia, while MARI BOSA is trying to become a fashion destination in Southeast Asia.
      '''),
          ],
        ),
      ),
    );
  }
}