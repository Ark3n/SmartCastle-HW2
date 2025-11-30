import 'package:flutter/material.dart';

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
                    // first name
                    TextFormField(),

                    // last name
                    // email
                    // password
                    // confirm password
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
