import 'package:flutter/material.dart';

class InspactionViewPagerButton extends StatefulWidget {
  InspactionViewPagerButton({
    @required this.text,
    this.onPress,
    this.backGroundColor,
    this.borderRadius = 5.0,
    this.textColor,
  });

  final text;
  final Function onPress;
  final Color backGroundColor;
  final Color textColor;
  final double borderRadius;

  @override
  _InspactionViewPagerButton createState() => _InspactionViewPagerButton();
}

class _InspactionViewPagerButton extends State<InspactionViewPagerButton> {
  var defaultBorderRadius = 10.0;

  final textStyle = TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 15.0,
      fontFamily: 'open sans semibold');

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 3.0, right: 3.0),
      height: 30.0,
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
                        fontFamily: 'open sans semibold',
                        fontSize: 8.0),
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
