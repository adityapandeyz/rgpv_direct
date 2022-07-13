import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rgpv_direct/common/widgets/custom_square_button.dart';
import 'package:rgpv_direct/common/widgets/nav_drawer.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/home-page';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;
  // late BannerAd _bannerAd;
  // bool _isAdLoaded = false;

  // @override
  // void initState() {
  //   super.initState();
  //   _initBannerAd();
  // }

  // _initBannerAd() {
  //   _bannerAd = BannerAd(
  //     size: AdSize.fullBanner,
  //     adUnitId: 'ca-app-pub-3206735990577642/3121656977',
  //     listener: BannerAdListener(
  //       onAdLoaded: (ad) {
  //         setState(() {
  //           _isAdLoaded = true;
  //         });
  //       },
  //       onAdFailedToLoad: (ad, error) {},
  //     ),
  //     request: const AdRequest(),
  //   );
  //   _bannerAd.load();
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      // height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/slide2.jpg"), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: const Color.fromARGB(0, 255, 255, 255),
        //
        //
        //
        drawer: const NavDrawer(),
        //
        //
        //
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          title: const Text(
            'RGPVdirect',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    height: 150,
                    child: Image.asset('assets/app_logo/rgpv_direct_logo.png'),
                  ),
                ),
                //
                //
                //
                //
                // Container(
                //   width: double.infinity,
                //   height: MediaQuery.of(context).size.height * 0.3,
                //   child: _isAdLoaded
                //       ? Container(
                //           height: _bannerAd.size.height.toDouble(),
                //           width: _bannerAd.size.width.toDouble(),
                //           child: AdWidget(ad: _bannerAd),
                //         )
                //       : const SizedBox(),
                // ),
                //
                //
                //
                //
                GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 0,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    CustomSquareButton(
                      heroTagStr: 'btn1',
                      icon: Icons.update_sharp,
                      title: 'Updates',
                      onTap: () {
                        Navigator.of(context).pushNamed('/updates-page');
                      },
                    ),
                    CustomSquareButton(
                      heroTagStr: 'btn2',
                      icon: Icons.login,
                      title: 'St. Login',
                      onTap: () {
                        Navigator.of(context).pushNamed('/students-login-page');
                      },
                    ),
                    CustomSquareButton(
                      heroTagStr: 'btn3',
                      icon: Icons.access_time,
                      title: 'TimeTable',
                      onTap: () {
                        Navigator.of(context).pushNamed('/time-table-page');
                      },
                    ),
                    CustomSquareButton(
                      heroTagStr: 'btn4',
                      icon: Icons.book_outlined,
                      title: 'Syllabus',
                      onTap: () {
                        Navigator.of(context).pushNamed('/syllabus-page');
                      },
                    ),
                    CustomSquareButton(
                      heroTagStr: 'btn5',
                      icon: Icons.date_range_outlined,
                      title: 'Acad. Cale.',
                      onTap: () {
                        Navigator.of(context).pushNamed('/acad-calendar-page');
                      },
                    ),
                    CustomSquareButton(
                      heroTagStr: 'btn6',
                      icon: Icons.insert_chart_outlined_outlined,
                      title: 'Result',
                      onTap: () {
                        Navigator.of(context).pushNamed('/result-page');
                      },
                    ),
                    CustomSquareButton(
                      heroTagStr: 'btn7',
                      icon: Icons.calculate_outlined,
                      title: 'CGPA Calc.',
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed('/cgpa-calculator-page');
                      },
                    ),
                    CustomSquareButton(
                      heroTagStr: 'btn8',
                      icon: Icons.percent_outlined,
                      title: 'Perc. Calc.',
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed('/perc-calculator-page');
                      },
                    ),
                    CustomSquareButton(
                      heroTagStr: 'btn9',
                      icon: Icons.calendar_month_outlined,
                      title: 'MP Gov Cal.',
                      onTap: () {
                        Navigator.of(context).pushNamed('/mp-gov-diary-page');
                      },
                    ),
                    CustomSquareButton(
                      heroTagStr: 'btn10',
                      icon: Icons.contact_support_outlined,
                      title: 'Contact Us',
                      onTap: () {
                        Navigator.of(context).pushNamed('/contact-us-page');
                      },
                    ),
                    CustomSquareButton(
                      heroTagStr: 'btn11',
                      icon: Icons.info_outline,
                      title: 'About',
                      onTap: () {
                        Navigator.of(context).pushNamed('/about-page');
                      },
                    ),
                    CustomSquareButton(
                      heroTagStr: 'btn12',
                      icon: Icons.logout,
                      title: 'Logout',
                      onTap: () {
                        FirebaseAuth.instance.signOut();
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
