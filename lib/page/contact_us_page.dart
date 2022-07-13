import 'package:flutter/material.dart';
import 'package:rgpv_direct/common/widgets/custom_button.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({Key? key}) : super(key: key);
  static const String routeName = '/contact-us-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: const Text(
          'Cantact Us',
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
              children: [
                Column(
                  children: [
                    Container(
                      constraints: const BoxConstraints.expand(height: 120.0),
                      decoration: const BoxDecoration(color: Colors.grey),
                      child: Image.asset(
                        'assets/images/76438014.webp',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 35),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                  child: Column(
                    children: [
                      const Text(
                        "We’d love to hear from you",
                        style: TextStyle(fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                      const Text(
                        "For any query, feedback, reporting a bug, or deletion of your personal data -- feel free to contact us.",
                        style: TextStyle(fontSize: 13),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      const SizedBox(height: 24),
                      CustomButton(
                        text: 'Contact Us',
                        onTap: _launchURL,
                      ),
                      const SizedBox(height: 16),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _launchURL() async {
    final url = Uri.encodeFull('mailto:admin@dresolution.tech');
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
