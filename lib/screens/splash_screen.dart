import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:rmpl_hrm/main.dart';
import 'package:velocity_x/velocity_x.dart';

import '../constants/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(
            flex: 2,
          ),
          Center(
              child: Image.asset(
            'assets/images/LOGO.png',
            width: 170,
          )),
          28.heightBox,
          const Text(
            'RMPL',
            style: TextStyle(
              fontFamily: 'Inter',
              color: whiteColor,
              fontWeight: FontWeight.bold,
              letterSpacing: 4,
              fontSize: 40,
              // height: 2
            ),
          ),
          4.heightBox,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: mq.width * 0.45),
            child: Container(
              width: double.infinity,
              height: 4,
              decoration: BoxDecoration(
                  color: lightGreyColor, borderRadius: BorderRadius.circular(12)),
            ),
          ),
          16.heightBox,
          const Text(
            'Recorded Music Private Limited',
            style: TextStyle(
              fontFamily: 'Inter',
              color: whiteColor,
              fontWeight: FontWeight.w500,
              // letterSpacing: 4,
              fontSize: 20,
              // height: 2
            ),
          ),
          20.heightBox,
          const Text(
            'Feel the beat',
            style: TextStyle(
              fontFamily: 'Inter',
              color: whiteColor,
              // fontWeight: FontWeight.w500,
              // letterSpacing: 4,
              fontSize: 18,
              // height: 2
            ),
          ),
          Spacer(
            flex: 2,
          ),
          Container(
            height: 40,
            child: const LoadingIndicator(
              indicatorType: Indicator.lineScale,
              colors: [whiteColor],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          const Text(
            'Powered by Quickgick',
            style: TextStyle(
              fontFamily: 'Inter',
              color: whiteColor,
              fontWeight: FontWeight.w500,
              fontSize: 20,
              // height: 2
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}