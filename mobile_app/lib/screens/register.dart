import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_app/components/auth/header.dart';
import 'package:mobile_app/components/auth/inputs.dart';
import 'package:mobile_app/components/buttons.dart';
import 'package:mobile_app/screens/login.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                  title1: 'Create Account',
                  title2: "Let's Create Account Together",
                ),

                // email input
                const MyInput(
                  label: 'Full Name',
                  hint: 'Enter Your Name',
                ),
                const MyInput(
                  label: 'Email',
                  hint: 'Enter Your Email',
                ),
                // password input
                const MyInput(
                  label: 'Password',
                  hint: 'Enter Your Password',
                ),

                const SizedBox(
                  height: 16,
                ),
                // sign up button
                GreenButton(
                  labelText: 'Sign Up',
                  onPressed: () {},
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                GoogleAuthButton(
                  text: 'Sign Up With Google',
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
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?  ',
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Sign In',
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
