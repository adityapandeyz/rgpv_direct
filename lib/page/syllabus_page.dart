import 'package:flutter/material.dart';

import '../common/widgets/custom_webview.dart';

class SyllabusPage extends StatelessWidget {
  static const String routeName = '/syllabus-page';

  const SyllabusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: const Text(
          'Scheme/Syllabus',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: const CustomWebView(
        link: 'https://www.rgpv.ac.in/Uni/frm_ViewScheme.aspx',
      ),
    );
  }
}
