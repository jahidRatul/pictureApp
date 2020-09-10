import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inspect_pix/ui/button/default_button.dart';

class ConfirmDialog extends StatelessWidget {
  final String bodyText;
  final Function yesPress;
  final Function noPress;

  ConfirmDialog({
    this.bodyText,
    this.noPress,
    this.yesPress,
  });

  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.black.withAlpha(200),
      child: Center(
        child: new Container(
          padding: const EdgeInsets.all(30.0),
          child: new GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: new Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width * .8,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          bodyText,
                          style: GoogleFonts.lato(
                            fontSize: 18.0,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: RoundBoarderButton(
                                onPress: noPress,
                                text: "No",
                                textColor: Colors.blueAccent,
                                backGroundColor: Colors.grey.withOpacity(0.5),
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Expanded(
                              child: RoundBoarderButton(
                                text: "Yes",
                                // text: LangKey.Yes.tr(),
                                onPress: yesPress,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
