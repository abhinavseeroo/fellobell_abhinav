import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonTextFieldWidget extends StatelessWidget {
  final String hintText;

  const CommonTextFieldWidget({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    var normalBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: BorderSide(
        color: Colors.grey.shade300,
      ),
    );
    var errorBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: const BorderSide(
        color: Colors.red,
      ),
    );
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: TextFormField(
        decoration: InputDecoration(
          border: normalBorder,
          hintText: hintText,
          hintStyle:  const TextStyle(color: Color(0xFFACACAC),fontWeight: FontWeight.normal)
        ),
      ),
    );
  }
}
