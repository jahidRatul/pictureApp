import 'package:flutter/material.dart';

class RoundBoarderButton extends StatefulWidget {
  RoundBoarderButton({
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
  _RoundBoarderButtonState createState() => _RoundBoarderButtonState();
}

class _RoundBoarderButtonState extends State<RoundBoarderButton> {
  var defaultBorderRadius = 10.0;

  final textStyle = TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 20.0,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0, bottom: 15.0),
      child: Align(
        alignment: Alignment.center,
        child: RaisedButton(
          elevation: 10.0,
          padding: EdgeInsets.symmetric(vertical: 15),
          color: widget.backGroundColor != null
              ? widget.backGroundColor
              : Color(0xFF2A63D4),
          disabledColor: widget.backGroundColor != null
              ? widget.backGroundColor
              : Color(0xFF2A63D4),
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
                        fontSize: 15.0),
                  )),
              Container(
                margin: EdgeInsets.only(right: 10.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ),
              )
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
