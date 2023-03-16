import 'package:flutter/material.dart';

import '../reuseable_widget/reusable_widget.dart';
import '../utils/color_utils.dart';
import 'homepage.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar:
      AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Sign Up",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors:[hexStringToColor("0C8894"),
                  hexStringToColor("000436"),
                  //hexStringToColor("5E61F4")
                ],
                begin: Alignment.topCenter, end: Alignment.bottomCenter
            )),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.2, 20, 200) ,
            child: Column(
              children: <Widget>[
                logoWiget("assets/images/user-circle-regular-84.png"),

                const SizedBox(
                  height: 20,
                ),

                reusableTextField(
                    "Enter Username",
                    Icons.person_outline,
                    false,
                    _userNameTextController),

                const SizedBox(
                  height: 20,
                ),

                reusableTextField(
                    "Enter Email ID",
                    Icons.lock_outline,
                    false,
                    _emailTextController),

                const SizedBox(
                  height: 20,
                ),

                reusableTextField(
                    "Enter password",
                    Icons.lock_outline,
                    false,
                    _passwordTextController),

                const SizedBox(
                  height: 20,
                ),

                signInSignUpButton(context, false, (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Homepage()));
                }),
              ],
            ),

          ),
        ),
      ),
    );
  }
}
