import 'package:flutter/material.dart';
import 'package:meu_app/comuns/colors.dart';

Widget buttonCustom(
  String text,
  VoidCallback callBack,
  Color color,
) {
  return ElevatedButton(

    style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(AppColors.buttons)),
    onPressed: callBack,
    child: Padding(
      padding: EdgeInsets.all(10),
      child: Text(text , style: TextStyle(color: Colors.white),),
    ),
  );
}
