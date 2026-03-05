import 'package:flutter/material.dart';
import 'package:task_manager/ui/widgets/screen_background.dart';
import 'package:task_manager/ui/widgets/tm_app_bar.dart';

class UpdateProfileScreen extends StatefulWidget {
  const UpdateProfileScreen({super.key});

  @override
  State<UpdateProfileScreen> createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _firstNameTEController = TextEditingController();
  final TextEditingController _lastNameTEController = TextEditingController();
  final TextEditingController _mobileTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TMAppbar(),
      body: ScreenBackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 32,),
                  Text('Update Profile',style: Theme.of(context).textTheme.titleLarge,),
                  const SizedBox(height: 16,),
                  TextField(
                  
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        hintText: 'Photos'
                    ),
                  ),
                  const SizedBox(height: 8,),
                  TextField(
                    controller: _emailTEController,
                    decoration: InputDecoration(
                        hintText: 'Email'
                    ),
                  ),const SizedBox(height: 8,),
                  TextField(controller: _firstNameTEController,
                    decoration: InputDecoration(
                        hintText: 'First Name'
                    ),
                  ),const SizedBox(height: 8,),
                  TextField(controller: _lastNameTEController,
                    decoration: InputDecoration(
                        hintText: 'Last Name'
                    ),
                  ),const SizedBox(height: 8,),
                  TextField(controller: _mobileTEController,
                    decoration: InputDecoration(
                        hintText: 'Mobile'
                    ),
                  ),const SizedBox(height: 8,),
                  TextField(controller: _passwordTEController,
                    decoration: InputDecoration(
                        hintText: 'Password'
                    ),
                  ),
                  const SizedBox(height: 16,),
                  FilledButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.green,
                          content: Text('Profile Updated Successfully'),
                          duration: Duration(seconds: 2),
                        ),
                      );
                      Navigator.pop(context);
                    },
                    child: Text('Update'),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  @override
  void dispose() {
    _emailTEController.dispose;
    _firstNameTEController.dispose;
    _lastNameTEController.dispose;
    _mobileTEController.dispose;
    _passwordTEController.dispose;
    super.dispose();
  }
}
