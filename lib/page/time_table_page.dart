import 'package:flutter/material.dart';

import '../common/widgets/custom_webview.dart';

class TimeTablePage extends StatelessWidget {
  const TimeTablePage({Key? key}) : super(key: key);
  static const String routeName = '/time-table-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: const Text(
          'TimeTable',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: const CustomWebView(
        link: 'https://www.rgpv.ac.in/uni/frm_viewtt.aspx',
      ),
    );
  }
}
