import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:task_manager/ui/screens/login_screen.dart';
import 'package:task_manager/ui/screens/set_password_screen.dart';

import '../widgets/screen_background.dart';

class ForgotPasswordPinVerificationScreen extends StatefulWidget {
  const ForgotPasswordPinVerificationScreen({super.key});

  @override
  State<ForgotPasswordPinVerificationScreen> createState() =>
      _ForgotPasswordPinVerificationScreenState();
}

class _ForgotPasswordPinVerificationScreenState
    extends State<ForgotPasswordPinVerificationScreen> {

  final PinInputController _otpTEController = PinInputController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Form(key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 82),
                  Text(
                    'Pin Verification',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  SizedBox(height: 6),
                  Text(
                    'A 6 digit verification pin has been send to your email address',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 6),
                  PinInput(
                    length: 6,
                    pinController: _otpTEController,
                    builder: (context, cells) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: cells.map((cell) {
                          return Expanded(
                            child: Container(
                              height: 50,
                              margin: EdgeInsets.symmetric(horizontal: 6),
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(5),
                                color: cell.isFocused
                                    ? Colors.grey
                                    : Colors.grey[200],
                              ),
                              child: Center(
                                child: Text(
                                  cell.character ?? '',
                                  style: TextStyle(fontSize: 24),
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      );
                    },
                    onCompleted: (pin) => ('PIN: $pin'),
                  ),
                  SizedBox(height: 8),
                  FilledButton(
                    onPressed: _verifyPasswordButton,
                    child: Text('Verify'),
                  ),
                  SizedBox(height: 50),
                  Center(
                    child: Column(
                      children: [
                        RichText(
                          text: TextSpan(
                            style: TextStyle(color: Colors.black),
                            text: "Have an account? ",
                            children: [
                              TextSpan(
                                text: 'Sign in',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = _onTapLoginButton,
                                style: TextStyle(color: Colors.green),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _verifyPasswordButton() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Pin Verification Successful'),
        backgroundColor: Colors.green,
        behavior: SnackBarBehavior.floating,
        duration: Duration(seconds: 1),
      ),
    );
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SetPasswordScreen()),
    );
  }

  void _onTapLoginButton() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }
  @override
  void dispose() {
    _otpTEController.dispose();
    super.dispose();
  }
}
