import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextInputWithPrefixSuffix extends StatelessWidget {
  TextInputWithPrefixSuffix({
    this.hint,
    this.inputType,
    this.validator,
    this.onSaved,
    this.key,
    this.focusNode,
    this.onFieldSubmitted,
    this.borderColor,
    this.prefixItem,
    this.suffixItem,
    this.obscureText = false,
    this.backgroundColor,
    this.borderRadius = 10,
    this.controller,
    this.onChange,
    this.suffixIcon,
    this.inputFormatter,
    this.autovalidate = false,
  });

  final Color borderColor;
  final Color backgroundColor;
  final hint;

  final TextInputType inputType;
  final TextEditingController controller;

  final Widget prefixItem;
  final Widget suffixItem;
  final Widget suffixIcon;

  final Function validator;
  final Function onSaved;
  final Function(String) onChange;
  final Function onFieldSubmitted;
  final List<TextInputFormatter> inputFormatter;

  final Key key;
  final FocusNode focusNode;
  final bool obscureText;
  final double borderRadius;
  final bool autovalidate;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.0, right: 10.0),
      padding: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadius),
          ),
          color: backgroundColor != null ? backgroundColor : Colors.white,
          //Color(0xFFEDEDED),
          border: Border.all(
            color: borderColor != null ? borderColor : Color(0xffF0F0F0),
            width: 0.6,
            style: BorderStyle.solid,
          )),
      child: TextFormField(
        autovalidate: autovalidate,
        controller: controller,
        focusNode: focusNode,
        obscureText: obscureText,
        validator: validator,
        keyboardType: inputType,
        onFieldSubmitted: onFieldSubmitted,
        onChanged: onChange,
        style: TextStyle(color: Color(0xff4C4C4C)),
        inputFormatters: inputFormatter,
        decoration: InputDecoration(
          //contentPadding: EdgeInsets.all(0.0),
          border: InputBorder.none,
          hintText: "$hint",
         hintStyle: TextStyle(color: Colors.grey),
         // helperStyle: TextStyle(color: Color(0xff4C4C4C)),
          labelStyle: TextStyle(color: Color(0xff393939)),
          prefixIcon: prefixItem,
          suffix: suffixItem,
          suffixIcon: suffixIcon,

          /* border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(30.0),
          ),*/
        ),
      ),
    );
  }
}
