import 'package:flutter/material.dart';

class InspectionCard extends StatelessWidget {
  InspectionCard({@required this.cardchild, this.onPress});

  final Widget cardchild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPress,
        child: Container(
          child: cardchild,
          constraints: BoxConstraints.expand(height: 90.0),
          margin: EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
        ));
  }
}
