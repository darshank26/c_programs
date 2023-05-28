import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:launch_review/launch_review.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:page_transition/page_transition.dart';
import 'package:url_launcher/url_launcher.dart';

import '../AdHelper/adshelper.dart';
import '../utils/constants.dart';
import 'aboutus.dart';
import 'listscreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  late BannerAd _bannerAd;

  bool _isBannerAdReady = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _bannerAd = BannerAd(
      adUnitId: AdHelper.bannerAdUnitIdOfHomeScreen,
      request: AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (_) {
          setState(() {
            _isBannerAdReady = true;
          });
        },
        onAdFailedToLoad: (ad, err) {
          print('Failed to load a banner ad: ${err.message}');
          _isBannerAdReady = false;
          ad.dispose();
        },
      ),
    );
    _bannerAd.load();

  }


  @override
  void dispose() {
    super.dispose();
    _bannerAd.dispose();
  }

  final List<String> images = [
    'assets/images/about.png',
    'assets/images/2.png',
    'assets/images/3.png',
    'assets/images/4.png',
    'assets/images/5.png',
    'assets/images/6.png',
    'assets/images/7.png',
    'assets/images/8.png',
    'assets/images/9.png',
    'assets/images/10.png',
    'assets/images/11.png',
    'assets/images/12.png',
    'assets/images/13.png',
    'assets/images/14.png',
    'assets/images/15.png',
    'assets/images/16.png',
    'assets/images/17.png',
    'assets/images/18.png',
    'assets/images/19.png',
    'assets/images/20.png',
    'assets/images/21.png',
    'assets/images/22.png',
    'assets/images/23.png',
    'assets/images/24.png',
    'assets/images/25.png',
    'assets/images/26.png',
    'assets/images/27.png',
    'assets/images/28.png',
    'assets/images/29.png',
    'assets/images/30.png',


  ];

  final List<String> titles = [
    'About C',
    'Basic',
    'Operators',
    'Control Flow',
    'Numbers',
    'Mathematics',
    'Strings',
    'String Library',
    'Conversions',
    'Arrays',
    'Recursions',
    'Sorting',
    'Searching',
    'Matrices',
    'Storage Classes',
    'Pointers',
    'Structures',
    'Functions',
    'Data Structures',
    'Files',
    'Patterns',
    'Games',
    'Pre-Processor',
    'Applications',
    'Encryption',
    'Decryption',
    'Bitwise Operations',
    'Graphics',
    'Dynamic Memory',
    'Trick Programs',

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
            },
          )
        ],
        centerTitle: true,
        backgroundColor: kprimarycolor,
        elevation: 6,
        title: Text(
          "C Programs",
            style: GoogleFonts.poppins(
                letterSpacing: 0.6,
                textStyle: TextStyle(fontSize: 20,color: ksecondcolor,fontWeight: FontWeight.w600,))
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: images.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns
          ),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: ()
              {

                Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: ListScreen(listIndex : index)));

              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: kmainbackgroundcolor,
                      borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        images[index],
                        fit: BoxFit.cover,
                        height: 140,
                        width: double.infinity,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                            titles[index],
                            style: GoogleFonts.poppins(
                                letterSpacing: 0.6,
                                textStyle: TextStyle(fontSize: 13.5,color: kthirdcolor.withOpacity(0.8),fontWeight: FontWeight.w700,))
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (_isBannerAdReady)
            Container(
              width: _bannerAd.size.width.toDouble(),
              height: _bannerAd.size.height.toDouble(),
              child: AdWidget(ad: _bannerAd),
            ),
        ],
      ),

    );
  }


  void launchURL() async {
    const url = 'https://play.google.com/store/apps/developer?id=Darshan+Komu';  // Replace with your desired URL
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

}


