import 'package:crm/ui/accounts.dart';
import 'package:crm/ui/client.dart';
import 'package:crm/ui/projects.dart';
import 'package:crm/ui/task.dart';
import 'package:flutter/material.dart';

import './ui/login.dart';
import './ui/register.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CRM',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        'register': (context) => RegisterPage(
              title: '',
            ),
        'clients': (context) => Clients(),
        'task': (context) => Task(),
        'accounts': (context) => Accounts(),
        'projects': (context) => Projects(),
      },
      home: LoginPage(title: 'Login'),
      debugShowCheckedModeBanner: false,
    );
  }
}
