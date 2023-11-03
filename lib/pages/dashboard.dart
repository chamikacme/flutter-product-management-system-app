import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newapp/bloc/auth_bloc/auth_bloc.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    final AuthBloc authBloc = BlocProvider.of<AuthBloc>(context);
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Dashboard ${state.token}'),
          ),
          backgroundColor: const Color.fromARGB(255, 228, 228, 228),
          body: SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Welcome to the Product Management System',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.blue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Column(
                                children: [
                                  Text(
                                    'Total Categories',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '08',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.blue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Column(
                                children: [
                                  Text(
                                    'Total Products',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '13',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 25),
                    Text("Token: ${state.token}"),
                    const SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            authBloc.add(TokenChanged(token: "logout"));
                          },
                          child: const Text('Logout'),
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                            authBloc.add(TokenChanged(token: "check"));
                          },
                          child: const Text('Check'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
