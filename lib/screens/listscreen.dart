import 'package:c_programs/screens/detailscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:page_transition/page_transition.dart';
import 'package:share/share.dart';

import '../AdHelper/adshelper.dart';
import '../utils/constants.dart';

class ListScreen extends StatefulWidget {

  final int listIndex;

  const ListScreen({Key? key,required this.listIndex}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState(listIndex);

}

class _ListScreenState extends State<ListScreen> {

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

  final int listIndex;

  _ListScreenState(this.listIndex);


  final List<List<String>> data_0 = [
    ['Hello World Program'],
    ['Print Your Name'],
    ['Print Numbers from 1 to 10'],
    ['Takes input from the user and displays'],
    ['Calculate the Sum of Two Numbers'],
    ['Check Even or Odd'],
    ['Find the Maximum of Two Numbers'],
    ['Find the Minimum of Two Numbers'],
    ['Swap Two Numbers'],
    ['Check Leap Year'],
    ['Calculate Factorial of a Number'],
    ['Generate Multiplication Table'],
    ['Calculate the Average of Three Numbers'],
    ['Check if a Number is Positive or Negative'],
    ['Calculate the Square of a Number'],
    ['Calculate the Cube of a Number'],
    ['Check if a Number is Prime'],
    ['Find the Sum of Natural Numbers'],
    ['Generate Fibonacci Series'],
    ['Check Palindrome Number'],
    ['Reverse a String'],
    ['Convert Decimal to Binary'],
    ['Calculate Power of a Number'],
    ['Calculate Area of a Circle'],
    ['Check if a Character is an Alphabet or not'],
    ['Check if a Number is a Perfect Square'],
    ['Calculate Simple Interest'],
    ['Calculate the Area of a Rectangle'],
    ['Check if a Number is an Armstrong Number'],
    ['Calculate Area of a Triangle'],
    ['Check if a Number is a Perfect Number'],
    ['Calculate Compound Interest'],
    ['Check if a Number is a Strong Number'],
    ['Convert Decimal to Octal'],
    ['Calculate the Sum of Digits of a Number'],
    ['Calculate Area of a Square'],
    ['Check if a Number is a Harshad Number'],
    ['Find the Factors of a Number'],
    ['Convert Binary to Decimal'],
    ['Check if a Number is a Neon Number'],
    ['Calculate the Area of a Trapezoid'],
    ['Check if a Number is a Disarium Number'],
    ['Generate Pascal\'s Triangle'],
    ['Calculate the Volume of a Sphere'],
    ['Check if a Number is a Happy Number'],
    ['Find the ASCII Value of a Character'],
    ['Calculate the Area of a Parallelogram'],
    ['Check if a Number is a Kaprekar Number'],
    ['Find the GCD and LCM of Two Numbers']

  ];



  @override
  Widget build(BuildContext context) {
     if(widget.listIndex == 1) {
      return Scaffold(
        appBar: AppBar(
          elevation: 6,
          title: Text("Basic",
              style: GoogleFonts.openSans(textStyle: TextStyle(
                fontSize: 22,
                color: Colors.white,
                fontWeight: FontWeight.w600,))
          ),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: data_0.length,
          itemBuilder: (BuildContext context, int index) {
            List<String> row = data_0[index];
            return GestureDetector(
              onTap: () {

                  Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex : index)));

              },
              child: Padding(
                padding: const EdgeInsets.only(top:12.0,left:8.0,right: 8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: kmainbackgroundcolor.withOpacity(0.6),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  padding: const EdgeInsets.only(top:4.0,left:6.0,right: 6.0),
                  child: ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Text(
                              "${index + 1}.",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 18,
                                    color: kthirdcolor,
                                    fontWeight: FontWeight.w500,))
                          ),
                        ),
                        Expanded(
                          flex: 7,
                          child: Text(
                             row[0],
                              textAlign: TextAlign.start,
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                fontSize: 16,
                                color: kthirdcolor,
                                fontWeight: FontWeight.w500,))
                          ),
                        ),
                      ],
                    ), // Display item name
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        PhysicalModel(
                          color: Colors.grey.withOpacity(0.4),
                          shape: BoxShape.circle,
                          elevation: 1.0,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: IconButton(
                              icon: FaIcon( FontAwesomeIcons.heart,
                                  color: Colors.blueAccent, size: 20),
                              onPressed: () {
                               // Copy the description to clipboard
                              },
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            );
          },
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

    else
    {
      return Container();
    }
  }

  void _share(String text) {
    Share.share(text); // Share the provided text
  }




  void _copyToClipboard(String text) {
    Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Linux Command $text Copied to clipboard')),
    );
  }

}