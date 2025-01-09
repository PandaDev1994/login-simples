import 'package:flutter/material.dart';

Widget textFormFieldCustom(
  TextEditingController controller,
  String label,
  String hint,
  bool showObscured,
  bool? obscured,
  bool showIcon,
  IconData? icon,
  VoidCallback? callBack,
  FocusNode focusNode,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 15,
      vertical: 10,
    ),
    child: TextFormField(
      focusNode: focusNode,
      style: TextStyle(color: Colors.black),
      obscureText: showObscured ? obscured! : false,
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.black),
        hintText: hint,
        hintStyle: TextStyle(color: Colors.black),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        suffixIcon:
            showIcon ? IconButton(onPressed: callBack, icon: Icon(icon)) : null,
      ),
    ),
  );
}
