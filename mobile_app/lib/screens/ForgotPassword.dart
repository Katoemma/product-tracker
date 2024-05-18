import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_app/components/auth/inputs.dart';
import 'package:mobile_app/components/buttons.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forgot Password'),
      ),
      body: Container(
        padding: const EdgeInsets.all(18),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Enter email associated with your account and we'll send you a link to reset your password.",
                style: GoogleFonts.roboto(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              const MyInput(
                label: 'Email',
                hint: 'Enter valid Email',
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              GreenButton(
                labelText: "Send Link",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
