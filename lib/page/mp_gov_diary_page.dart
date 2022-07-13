import 'package:flutter/material.dart';
import 'package:rgpv_direct/common/widgets/custom_webview.dart';

class MpGovDiaryPage extends StatelessWidget {
  const MpGovDiaryPage({Key? key}) : super(key: key);
  static const String routeName = '/mp-gov-diary-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: const Text(
          'MP Gov Calendar',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: const CustomWebView(
        link: 'http://diary.mp.gov.in/',
      ),
    );
  }
}
