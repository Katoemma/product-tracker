import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_app/components/auth/header.dart';
import 'package:mobile_app/components/auth/inputs.dart';
import 'package:mobile_app/components/buttons.dart';
import 'package:mobile_app/screens/register.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.all(16),
        color: Theme.of(context).scaffoldBackgroundColor,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const AuthHeader(
                  title1: 'Welcome Back',
                  title2: 'Welcome Back! Please Enter Your Details',
                ),

                // email input
                const MyInput(
                  label: 'Email',
                  hint: 'Enter Your Email',
                ),
                // password input
                const MyInput(
                  label: 'Password',
                  hint: 'Enter Your Password',
                ),

                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Forgot Password?',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),

                // login button
                const SizedBox(
                  height: 16,
                ),
                // login button
                GreenButton(
                  labelText: 'Login',
                  onPressed: () {},
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                GoogleAuthButton(
                  darkMode: Theme.of(context).brightness == Brightness.dark,
                  style: const AuthButtonStyle(
                    padding: EdgeInsets.all(14),
                    textStyle: TextStyle(fontSize: 16),
                  ),
                  onPressed: () {},
                ),
                //dont have account
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const RegisterScreen();
                        },
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account? ',
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Sign Up For Free',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
