// ignore_for_file: unused_import, depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/cubit/cubit.dart';
import 'package:flutter_application_1/view/pages/check_out1.dart';
import 'package:flutter_application_1/view/pages/failed.dart';
import 'package:flutter_application_1/view/pages/home.dart';
import 'package:flutter_application_1/view/pages/main-layout.dart';
import 'package:flutter_application_1/view/pages/no_return.dart';
import 'package:flutter_application_1/view/pages/product.dart';
import 'package:flutter_application_1/view/pages/return.dart';
import 'package:flutter_application_1/view/pages/start.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
        BlocProvider(
          create: (context) => AppCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromRGBO(255, 205, 178, 1)),
          useMaterial3: true,
        ),
        home: const StartPage(),
      ),
    );
  }
}

