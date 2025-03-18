import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Color/App_Colors.dart';

class TextfieldCustom extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final Color borderColor;
  final double borderRadius;
  final TextInputType keyboardType;
  final EdgeInsetsGeometry contentPadding;

  const TextfieldCustom({
    super.key,
    required this.controller,
    required this.hintText,
    required this.borderColor,
    required this.borderRadius,
    required this.keyboardType,
    required this.contentPadding

  });

  @override
  State<TextfieldCustom> createState() => _TextfieldCustomState();
}

class _TextfieldCustomState extends State<TextfieldCustom> {
  @override
  Widget build(BuildContext context) {
    return TextField(
        controller:widget.controller ,
        keyboardType:widget.keyboardType,
        inputFormatters:widget.keyboardType==TextInputType.number ?
        [
          FilteringTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(10),
        ]:[],
        cursorColor: ColorConst.black,
        decoration: InputDecoration(
          hintText: widget.hintText,
          contentPadding: widget.contentPadding,
          hintStyle: TextStyle(
            color: ColorConst.shadyLady,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontFamily: "Poppins",
          ),
          filled: true,
          fillColor: ColorConst.white,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: widget.borderColor, width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            borderSide: BorderSide(color: widget.borderColor, width: 1),
          ),

        ),

    );
  }
}
