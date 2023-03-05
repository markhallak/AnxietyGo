import 'package:flutter/material.dart';

const MaterialColor primary = MaterialColor(_primaryPrimaryValue, <int, Color>{
  50: Color(0xFFE4EDF6),
  100: Color(0xFFBAD3E9),
  200: Color(0xFF8DB6DB),
  300: Color(0xFF5F99CC),
  400: Color(0xFF3C83C1),
  500: Color(_primaryPrimaryValue),
  600: Color(0xFF1765AF),
  700: Color(0xFF135AA6),
  800: Color(0xFF0F509E),
  900: Color(0xFF083E8E),
});
const int _primaryPrimaryValue = 0xFF1A6DB6;

const MaterialColor primaryAccent =
    MaterialColor(_primaryAccentValue, <int, Color>{
  100: Color(0xFFBCD3FF),
  200: Color(_primaryAccentValue),
  400: Color(0xFF5690FF),
  700: Color(0xFF3C80FF),
});
const int _primaryAccentValue = 0xFF89B2FF;
