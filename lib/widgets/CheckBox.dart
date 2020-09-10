import 'package:flutter/material.dart';

class LabeledCheckbox extends StatelessWidget {
  const LabeledCheckbox({
    this.label,
    this.padding,
    this.value,
    this.onChanged,
  });

  final String label;
  final EdgeInsets padding;
  final bool value;
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      child: Theme(
        data: Theme.of(context).copyWith(
            unselectedWidgetColor: Colors.grey, disabledColor: Colors.blue),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Checkbox(
              checkColor: Colors.white,
              activeColor: Color(0xFF2A63D4),
              value: value,
              onChanged: (bool newValue) {
                onChanged(newValue);
              },
            ),
            Expanded(
                child: Text(
              label,
              style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'open sans regular',
                  fontSize: 12.0),
            )),
          ],
        ),
      ),
    );
  }
}
