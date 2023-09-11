// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  const MyButton({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  bool _showTextForm = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (!_showTextForm)
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _showTextForm = true;
                  });
                },
                child: Text('Open Text Form'),
              ),
            if (_showTextForm)
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter your text',
                ),
              ),
          ],
        ),
      ),
    );
  }
}