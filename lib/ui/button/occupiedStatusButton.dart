import 'package:flutter/material.dart';

class OccupaiedStatusButton extends StatefulWidget {
  OccupaiedStatusButton({
    @required this.text,
    this.onPress,
    this.backGroundColor,
    this.borderRadius = 10.0,
    this.textColor,
  });

  final text;
  final Function onPress;
  final Color backGroundColor;
  final Color textColor;
  final double borderRadius;

  @override
  _OccupaiedStatusButton createState() => _OccupaiedStatusButton();
}

class _OccupaiedStatusButton extends State<OccupaiedStatusButton> {
  var defaultBorderRadius = 20.0;

  final textStyle = TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 12.0,
      fontFamily: 'open sans regular');

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 7.0, right: 7.0),
      height: 50.0,
      child: Align(
        alignment: Alignment.center,
        child: FlatButton(
          color: widget.backGroundColor != null
              ? widget.backGroundColor
              : Color(0xFF2A63D4),
          disabledColor: widget.backGroundColor != null
              ? widget.backGroundColor
              : Color(0xFFA5A5A5),
          onPressed: widget.onPress,
          child: Stack(
            children: <Widget>[
              Align(
                  alignment: Alignment.center,
                  child: Text(
                    '${widget.text}',
                    textAlign: TextAlign.center,
                    style: textStyle.copyWith(
                        color: widget.textColor != null
                            ? widget.textColor
                            : Colors.white,
                        fontFamily: 'open sans regular',
                        fontSize: 12.0),
                  )),
            ],
          ),
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius != null
                ? widget.borderRadius
                : defaultBorderRadius),
            borderSide: BorderSide(
              color: widget.backGroundColor != null
                  ? widget.backGroundColor
                  : Color(0xFF2A63D4),
              style: widget.backGroundColor != null
                  ? BorderStyle.solid
                  : BorderStyle.none,
            ),
          ),
        ),
      ),
    );
  }
}
