import 'package:flutter/material.dart';

import '../common/widgets/custom_webview.dart';

class StudentsLoginPage extends StatelessWidget {
  static const String routeName = '/students-login-page';

  const StudentsLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: const Text(
          'Students Login',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: const CustomWebView(
        link: 'https://www.rgpv.ac.in/Login/StudentLogin.aspx',
      ),
    );
  }
}
