import 'package:flutter/material.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> scaffoldMessenger(
    String text, Color color, BuildContext context) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(text),
    backgroundColor: color,
    showCloseIcon: true,
  ));
}