import 'package:flutter/material.dart';

class NoReturn extends StatelessWidget {
  const NoReturn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: const Text("Return"),
        centerTitle: true,
        leading: IconButton(
            onPressed: (){
            Navigator.pop(context);
          }, 
            icon: 
              const Icon(Icons.arrow_circle_left_outlined,size: 40,)
          ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/returning 1.png'),
            const Text('no return')
          ],
        ),
      ),
    );
  }
}