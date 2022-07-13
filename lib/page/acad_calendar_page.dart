import 'package:flutter/material.dart';
import 'package:rgpv_direct/common/widgets/custom_webview.dart';

class AcadCalendarPage extends StatelessWidget {
  const AcadCalendarPage({Key? key}) : super(key: key);
  static const String routeName = '/acad-calendar-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: const Text(
          'Academic Calendar',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: const CustomWebView(
        link: 'https://www.rgpv.ac.in/Academics/frm_AcademicCalender.aspx',
      ),
    );
  }
}
