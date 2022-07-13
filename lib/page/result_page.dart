import 'package:flutter/material.dart';

import '../common/widgets/custom_webview.dart';

class ResultPage extends StatelessWidget {
  static const String routeName = '/result-page';

  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: const Text(
          'Result',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: const CustomWebView(
        link: 'http://result.rgpv.ac.in/result/ProgramSelect.aspx',
      ),
    );
  }
}
