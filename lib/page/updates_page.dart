import 'package:flutter/material.dart';

import '../common/widgets/custom_webview.dart';

class UpdatesPage extends StatefulWidget {
  static const String routeName = '/updates-page';

  const UpdatesPage({Key? key}) : super(key: key);

  @override
  State<UpdatesPage> createState() => _UpdatesPageState();
}

class _UpdatesPageState extends State<UpdatesPage> {
  var loadingPercentage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: const Text(
          'Updates',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: const CustomWebView(
        link: 'https://www.rgpv.ac.in/',
      ),
    );
  }
}
