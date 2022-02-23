import 'package:flutter/material.dart' ;
import 'package:flutter_svg/svg.dart';
import 'package:login_signup_page/components/rounded_button.dart';
import 'package:login_signup_page/constant.dart';
import 'package:login_signup_page/screens/login/login_screen.dart';
import 'package:login_signup_page/screens/signup/signup_screen.dart';
import 'background.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome to EDU',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height*0.03,),
          SvgPicture.asset('assets/icons/chat.svg',
          height: size.height *0.45,
          ),
          SizedBox(height: size.height*0.05,),
          RoundedButton(
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context){
                    return LoginScreen();
                    },
                ),
              );
            },
            text: 'Login',
          ),
          RoundedButton(
            press: () {
              Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) {
                    return SignUpScreen();
              },
              ),);
            },
            text: 'Sign Up',
            color: kPrimaryLightColor,
            textColor: Colors.black,
          ),
        ],
    ),
      ),);
  }
}

