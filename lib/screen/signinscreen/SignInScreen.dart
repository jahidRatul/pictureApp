import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_responsive_screen/flutter_responsive_screen.dart';
import 'package:inspect_pix/Icons/app_icons_icons.dart';
import 'package:inspect_pix/screen/home/MainHomeScreen.dart';
import 'package:inspect_pix/screen/signupscreen/SignUpScreen.dart';
import 'package:inspect_pix/ui/button/default_button.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String messageValidation = '';

  FocusNode emailNode = FocusNode();
  FocusNode passwordNode = FocusNode();
  bool obscureText = true;

  void allUnFocus() {
    emailNode.unfocus();
    passwordNode.unfocus();
  }

  @override
  Widget build(BuildContext context) {
    final Function wp = Screen(MediaQuery
        .of(context)
        .size).wp;
    final Function hp = Screen(MediaQuery
        .of(context)
        .size).hp;
    return Scaffold(
      backgroundColor: Color(0xFFF3F5FC),
      body: SafeArea(
        child: Container(
          // padding: EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Divider(
                  height: 100.0,
                  color: Colors.transparent,
                ),
                Container(
                  child: Center(
                    child: //SvgPicture.asset(SvgImageName.logo),
                    Image(
                      image: AssetImage('images/signinlogo.png'),
                      width: wp(50) < hp(50) ? wp(50) : hp(50),
                      height: wp(50) < hp(50) ? wp(50) : hp(50),
                    ),
                  ),
                ),
                Divider(
                  height: 20.0,
                  color: Colors.transparent,
                ),
                Container(
                  child: Center(
                      child: Text(
                        "Welcome back!",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontFamily: 'open sans semibold'),
                      )),
                ),
                SizedBox(
                  height: 30.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.transparent,
                  ),
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10.0, right: 10.0),
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            color: Colors.white,
                            //Color(0xFFEDEDED),
                            border: Border.all(
                              color: Color(0xffF0F0F0),
                              width: 2.0,
                              style: BorderStyle.solid,
                            )),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          controller: emailController,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Email cannot be empty';
                            }
                            return null;
                          },

                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontFamily: 'open sans regular'),
                          decoration: InputDecoration(

                            border: InputBorder.none,
                            hintText: "email",
                            hintStyle: TextStyle(
                                fontSize: 12.0,
                                color: Colors.grey,
                                fontFamily: 'open sans regular'),
                            prefixIcon: Icon(
                              AppIcons.mail,
                              size: 15.0,
                              color: Color(0xFF2A63D4),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                        width: 150.0,
                        child: Divider(
                          color: Colors.transparent,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10.0, right: 10.0),
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            color: Colors.white,
                            //Color(0xFFEDEDED),
                            border: Border.all(
                              color: Color(0xffF0F0F0),
                              width: 2.0,
                              style: BorderStyle.solid,
                            )),
                        child: TextFormField(
                          controller: passwordController,
                          validator: (value) {
                            if (value.isEmpty)
                              return 'Password cannot be empty';
                            return null;
                          },
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontFamily: 'open sans regular'),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "pass",
                            hintStyle: TextStyle(
                                fontSize: 12.0,
                                color: Colors.grey,
                                fontFamily: 'open sans regular'),
                            prefixIcon: Icon(
                              AppIcons.password,
                              size: 15.0,
                              color: Color(0xFF2A63D4),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 40.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.transparent,
                  ),
                ),
                RoundBoarderButton(
                  text: "LOGIN",
                  onPress: () {
                    _login();
                    allUnFocus();
                  },
                ),
                SizedBox(
                  height: 30.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.transparent,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 25.0, left: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Forgot password?",
                        style: TextStyle(
                            color: Color(0xFF2A63D4),
                            fontSize: 12.0,
                            fontFamily: 'open sans regular'),
                      ),
                      Container(
                          child: Row(
                            children: <Widget>[
                              Text(
                                "New here?",
                                style: TextStyle(
                                    color: Color(0xFF4C4C4C),
                                    fontSize: 12.0,
                                    fontFamily: 'open sans regular'),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SignUpPage()));
                                },
                                child: Text(
                                  " Sign Up.",
                                  style: TextStyle(
                                      color: Color(0xFF2A63D4),
                                      fontSize: 12.0,
                                      fontFamily: 'open sans regular'),
                                ),
                              ),
                            ],
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 60.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.transparent,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 25.0, right: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Stack(
                        alignment: Alignment.center,
                        children: [


                          Divider(
                            height: 2.0,
                            color: Colors.grey,
                          ),
                          CircleAvatar(
                            radius: 13,
                            backgroundColor: Color(0xFFF05A2A),
                            child: Icon(
                              Icons.arrow_downward,
                              color: Colors.white,
                            ),
                          ),

                        ],
                      ),
                      SizedBox(
                        height: 30.0,
                        width: 150.0,
                        child: Divider(
                          color: Colors.transparent,
                        ),
                      ),
                      Center(
                        child: Text(
                          "You are completely safe.",
                          style: TextStyle(
                              color: Color(0xFF4C4C4C),
                              fontSize: 12.0,
                              fontFamily: 'open sans regular'),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Center(
                          child: Text("Read our Terms & Conditions.",
                              style: TextStyle(
                                  color: Color(0xFF2A63D4),
                                  fontSize: 12.0,
                                  fontFamily: 'open sans regular')),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _login() async {
    if(_formKey.currentState.validate()){

      if(emailController.text == "test@inspectpix.com" && passwordController.text=="123456789" ){
        emailController.clear();
        passwordController.clear();
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => MainHome()));

      }


    }

  }
}

