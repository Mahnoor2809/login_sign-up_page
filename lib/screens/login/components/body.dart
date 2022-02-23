import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_signup_page/components/already_have_an_account.dart';
import 'package:login_signup_page/components/rounded_button.dart';
import 'package:login_signup_page/components/rounded_input_field.dart';
import 'package:login_signup_page/components/rounded_password_field.dart';
import 'package:login_signup_page/components/text_field_container.dart';
import 'package:login_signup_page/constant.dart';
import 'package:login_signup_page/screens/login/components/background.dart';
import 'package:login_signup_page/screens/signup/signup_screen.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView( // prevent pixels overflowed
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Login',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height*0.03,),
          SvgPicture.asset('assets/icons/login.svg',
          height: size.height *0.35,
          ),
          SizedBox(height: size.height*0.03,),
          RoundInputField(
            hintText: 'Your Email',
            onChanged: (value) {  },),
          RoundPasswordField(
            hintText: 'Password',
            onChanged: (value) {},),
          RoundedButton(
            text: 'Login',
            press: () {  },),
          SizedBox(height: size.height*0.03,),
          AlreadyHaveAnAccountCheck(
            press: () {
            Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) {
                  return SignUpScreen();
                  },

            ),);
          },),

        ],
    ),
      ) ,);
  }
}


