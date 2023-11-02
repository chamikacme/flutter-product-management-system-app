import 'package:flutter/material.dart';
import 'package:newapp/components/styled_button.dart';
import 'package:newapp/components/styled_textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() {}

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
                    image: AssetImage('assets/login.png'),
                    width: 100,
                    height: 100),

                const SizedBox(height: 25),

                //welcome text
                const Text(
                  'Welcome back!',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),

                const SizedBox(height: 25),

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

                //forgot password button
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),

                const SizedBox(height: 25),

                //login button
                StyledButton(text: 'Sign In', onPressed: signUserIn),

                const SizedBox(height: 25),

                //not a member text
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Not a member?',
                      style: TextStyle(color: Colors.black),
                    ),
                    const SizedBox(width: 5),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/register');
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
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
