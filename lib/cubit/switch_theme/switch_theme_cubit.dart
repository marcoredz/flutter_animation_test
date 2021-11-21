import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation_test/ui/themes/app_themes.dart';

class SwitchThemeCubit extends Cubit<ThemeData> {
  SwitchThemeCubit() : super(appThemeData[eThemes.amber] ?? ThemeData());

  void setTheme(eThemes newTheme) {
    emit(appThemeData[newTheme] ?? ThemeData());
  }
}
