import 'dart:ui';

import 'package:flutter/material.dart';

const primaryColor = Color(0xFF0C8A7B);
const subTextColor = Color(0xFF828A89);
const textColor = Color(0xFF101817);

ButtonStyle greenButtonStyle = ButtonStyle(
  padding: const WidgetStatePropertyAll(EdgeInsets.all(18)),
  backgroundColor: const WidgetStatePropertyAll(primaryColor),
  foregroundColor: const WidgetStatePropertyAll(Colors.white),
  shape: WidgetStateProperty.all(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  ),
);
