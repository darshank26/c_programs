import 'package:c_programs/screens/detailscreen.dart';
import 'package:c_programs/screens/detailscreenop.dart';
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
import 'detailscreencontrol.dart';

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
    ['Find the GCD and LCM of Two Numbers'],
    ['Print Alphabets from A to Z & numbers from 1 to 100'],
    ['Convert given days to years, week and days'],
    ['Print company bonus on salary'],
    ['Calculate Gross salary from a given basic pay'],

  ];

  final List<List<String>> data_1 = [
  ['Addition of Two Numbers'],
  ['Subtraction of Two Numbers'],
  ['Multiplication of Two Numbers'],
  ['Division of Two Numbers'],
  ['Modulo Calculation'],
  ['Increment and Decrement Operators'],
  ['Compound Assignment Operators'],
  ['Comparing Two Numbers'],
  ['Checking Equality of Two Numbers'],
  ['Checking Greater or Lesser Number'],
  ['Relational Operators with Variables'],
  ['Logical AND Operation'],
  ['Logical OR Operation'],
  ['Logical NOT Operation'],
  ['Logical Operators with Conditional Statements'],
  ['Short-circuit Evaluation with Logical Operators'],
  ['Assignment Operator Examples'],
  ['Compound Assignment Operators'],
  ['Assignment Operators with Expressions'],
  ['Bitwise AND Operation'],
  ['Bitwise OR Operation'],
  ['Bitwise XOR Operation'],
  ['Bitwise NOT Operation'],
  ['Bitwise Shift Operators'],
  ['Ternary Operator for Maximum Number'],
  ['Ternary Operator for Odd or Even'],
  ['Sizeof Operator Examples'],
  ['Comma Operator in a for Loop'],
  ['Comma Operator with Function Arguments'],
  ['Operator Precedence in Expressions'],
  ['Operator Precedence in Complex Expressions'],
  ['Operator Precedence with Parentheses'],
  ['Operator Overloading with Custom Types'],
  ['Operator Overloading for Mathematical Operations'],
  ['Pointer Arithmetic'],
  ['Pointer Operators with Arrays'],
  ['Pointer Operators with Structures'],
  ['Left Shift Operator'],
  ['Right Shift Operator'],
  ['Bitwise Operations with Integers'],
  ['Bitwise Operations with Flags'],
  ['Comparing Pointers with Relational Operators'],
  ['Relational Operators with Dynamic Memory Allocation'],
  ['Integer Division'],
  ['Floating-Point Division'],
  ['Modulo Operator with Positive and Negative Numbers'],
  ['Modulo Operator for Even or Odd Check'],
  ['Bitwise NOT Operator with Binary Representation'],
  ['Bitwise NOT Operator for Toggle Operation'],
  ['Reverse a Number using Arithmetic Operators'],
  ['Swap Two Numbers using Bitwise Operators'],
  ['Calculate Average using Assignment Operators'],
  ['Check if a Number is Positive or Negative using Relational Operators'],
  ['Check if a Number is Even or Odd using Logical Operators'],
  ['Check if a Number is Prime using Ternary Operator'],
  ['Calculate Factorial using Increment and Decrement Operators'],
  ['Calculate Power using Compound Assignment Operators'],
  ['Perform Bitwise AND OR XOR on Two Integers'],
  ['Find the Maximum Number using Relational Operators'],
  ['Check if a Year is Leap Year using Logical Operators'],
  ['Convert Celsius to Fahrenheit using Arithmetic Operators'],
  ['Calculate Simple Interest using Compound Assignment Operators']
  ];


  final List<List<String>> data_2 = [

    ['If-else Statement Program'],
    ['Switch Statement Program'],
    ['While Loop Program'],
    ['For Loop Program'],
    ['Do-While Loop Program'],
    ['Break Statement Program'],
    ['Continue Statement Program'],
    ['Goto Statement Program'],
    ['Nested Control Statements Program'],
    ['Control Flow in Functions Program'],
    ['Control Flow in Structures Program'],
    ['Control Flow in Arrays Program'],
    ['Control Flow in Pointers Program'],
    ['Control Flow in Strings Program'],
    ['Control Flow in Files Program'],
    ['Control Flow in Data Structures Program'],
    ['Control Flow in Recursions Program'],
    ['Control Flow in Sorting Algorithms Program'],
    ['Control Flow in Searching Algorithms Program'],
    ['Control Flow in Mathematical Operations Program'],
    ['Control Flow in Error Handling Program'],
    ['Control Flow in Binary Search Program'],
    ['Control Flow in Matrix Operations Program'],
    ['Control Flow in Prime Number Generation Program'],
    ['Control Flow in Fibonacci Series Program'],
    ['Control Flow in Palindrome Checking Program'],
    ['Control Flow in Leap Year Program'],
    ['Control Flow in String Manipulation Program'],
    ['Control Flow in Recursive Binary Tree Program'],
    ['Control Flow in Graph Traversal Program'],
    ['Control Flow in Armstrong Number Program'],
    ['Control Flow in String Reversal Program'],
    ['Control Flow in Pyramid Pattern Program'],
    ['Control Flow in Binary to Decimal Conversion Program'],
    ['Control Flow in Bubble Sort Program'],
    ['Control Flow in Selection Sort Program'],
    ['Control Flow in Insertion Sort Program'],
    ['Control Flow in Merge Sort Program'],
    ['Control Flow in Quick Sort Program'],
    ['Control Flow in Linear Search Program'],
    ['Control Flow in Binary Tree Traversal Program'],
    ['Control Flow in Depth-First Search Program'],
    ['Control Flow in Breadth-First Search Program'],
    ['Control Flow in Dijkstra\'s Algorithm Program'],
    ['Control Flow in Prim\'s Algorithm Program'],
    ['Control Flow in Kruskal\'s Algorithm Program'],
    ['Control Flow in Tower of Hanoi Program'],
    ['Control Flow in Fibonacci Heap Program'],
    ['Control Flow in AVL Tree Program'],
    ['Control Flow in Topological Sorting Program']

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
     else if(widget.listIndex == 2) {
       return Scaffold(
         appBar: AppBar(
           elevation: 6,
           title: Text("Operators",
               style: GoogleFonts.openSans(textStyle: TextStyle(
                 fontSize: 22,
                 color: Colors.white,
                 fontWeight: FontWeight.w600,))
           ),
           centerTitle: true,
         ),
         body: ListView.builder(
           itemCount: data_1.length,
           itemBuilder: (BuildContext context, int index) {
             List<String> row = data_1[index];
             return GestureDetector(
               onTap: () {

                 Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreenOp(listIndex : index,program_name : data_1[index][0])));

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
     else if(widget.listIndex == 3) {
       return Scaffold(
         appBar: AppBar(
           elevation: 6,
           title: Text("Control Flow",
               style: GoogleFonts.openSans(textStyle: TextStyle(
                 fontSize: 22,
                 color: Colors.white,
                 fontWeight: FontWeight.w600,))
           ),
           centerTitle: true,
         ),
         body: ListView.builder(
           itemCount: data_2.length,
           itemBuilder: (BuildContext context, int index) {
             List<String> row = data_2[index];
             return GestureDetector(
               onTap: () {

                 Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreenControl(listIndex : index,program_name : data_1[index][0])));

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
