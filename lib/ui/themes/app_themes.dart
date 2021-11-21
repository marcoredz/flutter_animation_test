import 'package:flutter/material.dart';

enum eThemes { amber, purple, customGreen }

final appThemeData = {
  eThemes.amber: ThemeData(primarySwatch: Colors.amber),
  eThemes.purple: ThemeData(primarySwatch: Colors.purple),
  eThemes.customGreen: ThemeData(
    primaryColor: Colors.green,
    scaffoldBackgroundColor: Colors.green.shade100,
    backgroundColor: Colors.green.shade200,
  )
};
