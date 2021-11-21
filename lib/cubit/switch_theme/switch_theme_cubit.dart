import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class SwitchThemeCubit extends Cubit<bool> {
  SwitchThemeCubit() : super(false);

  MaterialColor get primarySwatch {
    return state ? Colors.purple : Colors.amber;
  }

  void toggleSwitch(bool value) {
    emit(value);
  }
}
