import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../widgets/screen_background.dart';
import 'login_screen.dart';

class SetPasswordScreen extends StatefulWidget {
  const SetPasswordScreen({super.key});

  @override
  State<SetPasswordScreen> createState() => _SetPasswordScreenState();
}

class _SetPasswordScreenState extends State<SetPasswordScreen> {
  final TextEditingController _newPasswordTEController = TextEditingController();
  final TextEditingController _confirmPasswordTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 82),
                  Text(
                    'Set Password',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  SizedBox(height: 6),
                  Text(
                    'Minimum length password 8 character with Latter and number combination',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 8),
                  TextFormField(controller: _newPasswordTEController,
                    decoration: InputDecoration(hintText: 'New Password'),
                    obscureText: true,
                  ),
                  SizedBox(height: 8),
                  TextFormField(controller: _confirmPasswordTEController,
                    decoration: InputDecoration(hintText: 'Confirm Password'),
                    obscureText: true,
                  ),
                  SizedBox(height: 8),
                  FilledButton(onPressed: _onTapLoginButton, child: Text('Confirm')),
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

  void _onTapLoginButton() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Password change successful!'),
        backgroundColor: Colors.green,
        behavior: SnackBarBehavior.floating,
        duration: Duration(seconds: 3),
      ),
    );
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }
  @override
  void dispose() {
    _confirmPasswordTEController.dispose();
    _newPasswordTEController.dispose();
    super.dispose();
  }
}
