import 'package:flutter/material.dart';

const background = Color(0xFF1C1C27);
const canvas = Color(0xFF28293D);
const error = Color(0xFFCF6679);

const primary = Color(0xFFE59C4D);

const primaryAlt = Color(0xFFFB8A04);
const secondary = Color(0xFFC470E0);
const secondaryAlt = Color(0xFFAD43CE);

var otterThemeData = ThemeData(
  backgroundColor: background,
  dialogBackgroundColor: background,
  canvasColor: canvas,
  scaffoldBackgroundColor: background,
  colorScheme: const ColorScheme(
    primary: primary,
    primaryContainer: primaryAlt,
    secondary: secondary,
    secondaryContainer: secondaryAlt,
    surface: canvas,
    background: background,
    error: error,
    onPrimary: Colors.black,
    onSecondary: Colors.black,
    onSurface: Colors.white,
    onBackground: Colors.white,
    onError: Colors.black,
    brightness: Brightness.dark,
  ),
);
