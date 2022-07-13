import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rgpv_direct/page/auth_page.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 173, 173, 173),
              image: DecorationImage(
                fit: BoxFit.fill,
                image:
                    AssetImage("assets/images/UIT_RGPV_Bhopal's_Main_Gate.jpg"),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Spacer(
                  flex: 1,
                ),
                const Text(
                  'Welcome,',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                Text(
                  user.displayName!,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.update_outlined),
            title: const Text('Updates'),
            onTap: () => {Navigator.of(context).pushNamed('/updates-page')},
          ),
          ListTile(
            leading: const Icon(Icons.login),
            title: const Text('Students Login'),
            onTap: () =>
                {Navigator.of(context).pushNamed('/students-login-page')},
          ),
          ListTile(
            leading: const Icon(Icons.access_time),
            title: const Text('TimeTable'),
            onTap: () => {Navigator.of(context).pushNamed('/time-table-page')},
          ),
          ListTile(
            leading: const Icon(Icons.book_outlined),
            title: const Text('Syllabus'),
            onTap: () => {Navigator.of(context).pushNamed('/syllabus-page')},
          ),
          ListTile(
            leading: const Icon(Icons.date_range_outlined),
            title: const Text('Academic Calendar'),
            onTap: () =>
                {Navigator.of(context).pushNamed('/acad-calendar-page')},
          ),
          ListTile(
            leading: const Icon(Icons.insert_chart_outlined_outlined),
            title: const Text('Result'),
            onTap: () => {Navigator.of(context).pushNamed('/result-page')},
          ),
          ListTile(
            leading: const Icon(Icons.calculate_outlined),
            title: const Text('CGPA Calculator'),
            onTap: () =>
                {Navigator.of(context).pushNamed('/cgpa-calculator-page')},
          ),
          ListTile(
            leading: const Icon(Icons.percent_outlined),
            title: const Text('Percentage Calculator'),
            onTap: () =>
                {Navigator.of(context).pushNamed('/perc-calculator-page')},
          ),
          ListTile(
            leading: const Icon(Icons.calendar_month_outlined),
            title: const Text('MP Gov Calendar'),
            onTap: () =>
                {Navigator.of(context).pushNamed('/mp-gov-diary-page')},
          ),
          ListTile(
            leading: const Icon(Icons.contact_support_outlined),
            title: const Text('Contact Us'),
            onTap: () => {Navigator.of(context).pushNamed('/contact-us-page')},
          ),
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: const Text('About'),
            onTap: () => {Navigator.of(context).pushNamed('/about-page')},
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Logout'),
            onTap: () => {
              //FirebaseAuth.instance.signOut()

              FirebaseAuth.instance.signOut().then((res) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const AuthPage()),
                );
              })
            },
          ),
        ],
      ),
    );
  }
}
