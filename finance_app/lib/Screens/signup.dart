import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:finance_app/screens/login.dart';
import 'package:finance_app/theme.dart';
import 'package:finance_app/widgets/primary_button.dart';
import 'package:finance_app/widgets/checkbox.dart';
import 'package:finance_app/widgets/signup_form.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

import '../widgets/bottomnavigationbar.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 70,
            ),
            Padding(
              padding: kDefaultPadding,
              child: Text(
                'Create Account',
                style: titleText,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: kDefaultPadding,
              child: Row(
                children: [
                  Text(
                    'Already a member?',
                    style: subTitle,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LogInScreen()));
                    },
                    child: Text(
                      'Log In',
                      style: textButton.copyWith(
                        decoration: TextDecoration.underline,
                        decorationThickness: 1,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: kDefaultPadding,
              child: SignUpForm(),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: kDefaultPadding,
              child: CheckBox('Agree to terms and conditions.'),
            ),
            SizedBox(
              height: 20,
            ),
            SignInButton(
              padding: kDefaultPadding,
              Buttons.Google,
              text: "OR Sign up with Google",
              onPressed: () {},
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: kDefaultPadding,
              child: InkWell(
                  onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Bottom()));
                },
                child: PrimaryButton(buttonText: 'Sign Up')),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
