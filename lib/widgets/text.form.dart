import 'package:flutter/material.dart';

textFormField({
  required controller,
  required label,
  keyboard,
  textinput,
  obscureText,





}) {
  return Material(
    child: TextFormField(
      controller: controller,
      autofocus:false,
      keyboardType:keyboard ,
      obscureText: obscureText, 
      textInputAction: textinput,
      decoration: InputDecoration(labelText: label,
      labelStyle: const TextStyle(color: Colors.blueGrey),
      contentPadding: const EdgeInsets.all(8),
     
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(
            color:Colors.blueGrey),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(
            color: Colors.blueGrey),
      )
      ),

    ),
  );
}