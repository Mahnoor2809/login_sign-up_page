import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_signup_page/components/already_have_an_account.dart';
import 'package:login_signup_page/components/rounded_button.dart';
import 'package:login_signup_page/components/rounded_input_field.dart';
import 'package:login_signup_page/components/rounded_password_field.dart';
import 'package:login_signup_page/constant.dart';
import 'package:login_signup_page/screens/signup/components/social_icon.dart';
import 'or_divider.dart';
import 'package:login_signup_page/screens/login/login_screen.dart';
import 'package:login_signup_page/screens/signup/components/background.dart';
class Body extends StatelessWidget {
  final Widget child;
  const Body({Key? key,
    required this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background( child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'SIGN UP',
            style: TextStyle(
              fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height *0.03,),
          SvgPicture.asset('assets/icons/signup.svg',
          height: size.height *0.35,),
          RoundInputField(
            onChanged: (value) {  }, 
            hintText: ''
                'Your Email',),
          RoundPasswordField(
              hintText: 'Password',
              onChanged: (value) {} ),
          RoundedButton(
              text: 'Sign UP', press: () {},),
          SizedBox(height: size.height *0.03,),
          AlreadyHaveAnAccountCheck(
              login: false, // check
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context){
                      return LoginScreen();},),);
              }),
          OrDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialIcon(
                iconSrc: 'assets/icons/facebook.svg',
                press: () {},
              ),
              SocialIcon(
                iconSrc: 'assets/icons/twitter.svg',
                press: () {},
              ),
              SocialIcon(
                iconSrc: 'assets/icons/google-plus.svg',
                press: () {},
              ),
            ],
          ),
        ],
      ),
    ),);
  }
}

