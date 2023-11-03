import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/register_page.dart';
import 'pages/dashboard.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newapp/bloc/auth_bloc/auth_bloc.dart';

void main() {
  final BlocProvider<AuthBloc> authBlocProvider = BlocProvider<AuthBloc>(
    create: (context) => AuthBloc(),
    child: const MyApp(),
  );
  runApp(authBlocProvider);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Management System',
      home: RegisterPage(),
      routes: {
        '/register': (context) => RegisterPage(),
        '/login': (context) => LoginPage(),
        '/dashboard': (context) => const DashboardPage(),
      },
      color: Colors.green,
    );
  }
}
