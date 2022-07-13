import 'package:flutter/material.dart';
import 'package:rgpv_direct/page/about_page.dart';
import 'package:rgpv_direct/page/acad_calendar_page.dart';
import 'package:rgpv_direct/page/auth_page.dart';
import 'package:rgpv_direct/page/cgpa_calculator_page.dart';
import 'package:rgpv_direct/page/contact_us_page.dart';
import 'package:rgpv_direct/page/home_page.dart';
import 'package:rgpv_direct/page/mp_gov_diary_page.dart';
import 'package:rgpv_direct/page/perc_calculator_page.dart';
import 'package:rgpv_direct/page/result_page.dart';
import 'package:rgpv_direct/page/students_login_page.dart';
import 'package:rgpv_direct/page/syllabus_page.dart';
import 'package:rgpv_direct/page/time_table_page.dart';
import 'package:rgpv_direct/page/updates_page.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthPage.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AuthPage(),
      );
    case HomePage.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => HomePage(),
      );
    case UpdatesPage.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const UpdatesPage(),
      );
    case StudentsLoginPage.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const StudentsLoginPage(),
      );
    case TimeTablePage.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const TimeTablePage(),
      );
    case SyllabusPage.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const SyllabusPage(),
      );
    case AcadCalendarPage.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AcadCalendarPage(),
      );
    case CgpaCalculatorPage.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const CgpaCalculatorPage(),
      );
    case PercCaculatorPage.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const PercCaculatorPage(),
      );
    case ResultPage.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const ResultPage(),
      );
    case MpGovDiaryPage.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const MpGovDiaryPage(),
      );
    case ContactUsPage.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const ContactUsPage(),
      );
    case AboutPage.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AboutPage(),
      );
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            title: const Text(
              'Error',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          body: Center(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.yellow,
              ),
              child: const Text(
                'Error 404',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
          ),
        ),
      );
  }
}
