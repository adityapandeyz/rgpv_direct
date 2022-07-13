import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  static const String routeName = '/about-page';

  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: const Text(
          'About',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: const BoxDecoration(color: Colors.white),
            child: Column(
              mainAxisSize: MainAxisSize.min,

              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                const Text(
                  ' Developers:',
                  style: TextStyle(),
                ),
                const SizedBox(height: 30),
                Container(
                  decoration: const BoxDecoration(
                    //borderRadius: BorderRadius.circular(10.0),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 57, 14, 177),
                        Color.fromARGB(255, 214, 9, 9),
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 0, 0, 0),
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/app_logo/dot.-150x150.png'),
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  'Version: 1.0.0+1',
                  style: TextStyle(),
                  //textAlign: TextAlign.,
                ),
                const SizedBox(height: 30),
                const Text(
                  '© 2022 dotResolution Studio',
                  style: TextStyle(),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
