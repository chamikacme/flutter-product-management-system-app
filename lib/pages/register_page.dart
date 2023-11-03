import 'package:flutter/material.dart';
import 'package:newapp/components/styled_button.dart';
import 'package:newapp/components/styled_textfield.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  void signUserUp() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 30),
                //icon
                const Image(
                    image: AssetImage('assets/register.png'),
                    width: 100,
                    height: 100),

                const SizedBox(height: 25),

                //welcome text
                const Text(
                  'Welcome!',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),

                const SizedBox(height: 25),

                //first name textfield
                StyledTextField(
                    controller: firstNameController,
                    hintText: 'First Name',
                    obscureText: false),

                const SizedBox(height: 10),

                //last name textfield
                StyledTextField(
                    controller: lastNameController,
                    hintText: 'Last Name',
                    obscureText: false),

                const SizedBox(height: 10),

                //email textfield
                StyledTextField(
                    controller: emailController,
                    hintText: 'Email',
                    obscureText: false),

                const SizedBox(height: 10),

                //password textfield
                StyledTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),

                const SizedBox(height: 10),

                //confirm password textfield
                StyledTextField(
                  controller: confirmPasswordController,
                  hintText: 'Confirm Password',
                  obscureText: true,
                ),

                const SizedBox(height: 25),

                //login button
                StyledButton(text: 'Sign Up', onPressed: signUserUp),

                const SizedBox(height: 25),

                //not a member text
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already a member?',
                      style: TextStyle(color: Colors.black),
                    ),
                    const SizedBox(width: 5),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: const Text(
                        'Sign In',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 25),

                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/dashboard');
                  },
                  child: const Text(
                    'Dashboard',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 25),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
