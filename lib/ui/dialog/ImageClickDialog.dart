import 'package:flutter/material.dart';

class ImageClickDialog extends StatelessWidget {
  ImageClickDialog({@required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Color(0XFF4C4C4C).withOpacity(0.70),
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                SizedBox(
                  height: 50.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.transparent,
                  ),
                ),
                Container(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: ImageIcon(
                      AssetImage("images/cancelicon.png"),
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 100.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.transparent,
                  ),
                ),
                Container(
                    height: 260.0,
                    width: double.infinity,
                    child: Image(
                      image: AssetImage('images/demo.png'),
                    )),
                Spacer(),
                Container(
                  margin:
                      EdgeInsets.only(left: 20.0, right: 20.0, bottom: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Shot again",
                        style: TextStyle(
                            fontSize: 12.0,
                            fontFamily: 'open sans semibold',
                            color: Colors.white),
                      ),
                      Text(
                        "Delete",
                        style: TextStyle(
                            fontSize: 12.0,
                            fontFamily: 'open sans semibold',
                            color: Color(0xFFFC7070)),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )

//      Center(
//        child:
//        new Text(
//          "It's a Dialog!",
//          style: TextStyle(color: Colors.white),
//        ),
//      ),
        );
  }
}
