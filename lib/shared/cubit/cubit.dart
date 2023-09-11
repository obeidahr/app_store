import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/cubit/states.dart';
import 'package:flutter_application_1/view/pages/cart.dart';
import 'package:flutter_application_1/view/pages/favorite.dart';
import 'package:flutter_application_1/view/pages/home.dart';
import 'package:flutter_application_1/view/pages/profile.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<Widget> screens = const [
    Home(),
    Favorite(),
    Cart(),
    Profile()
  ];

  void changeIndex(int index) {
    currentIndex = index;
    emit(AppChangeBottomNavBarState());
  }
}