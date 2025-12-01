import 'package:flutter/material.dart';
import 'package:smart_castle_hw2/feature/auth/helper/form_validator.dart';
import 'package:smart_castle_hw2/feature/auth/model/user.dart';
import 'package:smart_castle_hw2/feature/auth/pages/profile_page.dart';
import 'package:smart_castle_hw2/feature/auth/pages/widgets/custom_text_form_field.dart';

class JoinUsPage extends StatelessWidget {
  JoinUsPage({super.key});
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _secondNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/nike.png', color: Colors.black),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              // Title
              Text(
                'BECOME A NIKE MEMBER',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              // Description
              Text(
                textAlign: TextAlign.center,
                'Create you Nike Member profile and get your first access to the very best of Nike products, inspiration and community',
              ),
              // Forms
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    SizedBox(height: 50),
                    // first name
                    CustomTextFromField(
                      controller: _firstNameController,
                      hintText: 'First name',
                      obscureText: false,
                      validator: FormValidator.requiredField,
                    ),
                    SizedBox(height: 10),

                    // last name
                    CustomTextFromField(
                      controller: _secondNameController,
                      hintText: 'Last name',
                      obscureText: false,
                      validator: FormValidator.requiredField,
                    ),
                    SizedBox(height: 10),

                    // email
                    CustomTextFromField(
                      controller: _emailController,
                      hintText: 'Email',
                      obscureText: false,
                      validator: FormValidator.emailField,
                    ),
                    SizedBox(height: 10),

                    // password
                    CustomTextFromField(
                      controller: _passwordController,
                      hintText: 'Password',
                      obscureText: true,
                      validator: FormValidator.password,
                    ),
                    SizedBox(height: 10),

                    // confirm password
                    CustomTextFromField(
                      controller: _confirmPasswordController,
                      hintText: 'Confirm password',
                      obscureText: true,
                      validator: (value, hintText) =>
                          FormValidator.confirmPassword(
                            value,
                            hintText,
                            _passwordController.text,
                          ),
                    ),
                    SizedBox(height: 50),

                    // Join Us button
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(),
                        elevation: 2,
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProfilePage(
                                user: User(
                                  firstName: _firstNameController.text,
                                  secondName: _secondNameController.text,
                                  email: _emailController.text,
                                  password: _passwordController.text,
                                ),
                              ),
                            ),
                          );
                        }
                      },
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            'JOIN US',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
