import 'package:covid_19_app_ui/constants.dart';
import 'package:covid_19_app_ui/widgets/box_panel.dart';
import 'package:covid_19_app_ui/widgets/covid_banner.dart';
import 'package:covid_19_app_ui/widgets/covid_search_control.dart';
import 'package:covid_19_app_ui/widgets/symptom_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'SF Pro Text'),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, height: 896, width: 414, allowFontScaling: true);

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: kSpacingUnit * 5),
              Text(
                'Hi, Miya',
                style: kHeadingTextStyle,
              ),
              SizedBox(height: kSpacingUnit),
              SizedBox(
                width: kSpacingUnit * 30,
                child: Text(
                  'Anim labore velit deserunt do excepteur ea adipisicing aute velit ad ad voluptate id ad.',
                  textAlign: TextAlign.center,
                  style: kBodyTextStyle,
                ),
              ),
              SizedBox(height: kSpacingUnit * 3),
              CovidSearchControl(),
              SizedBox(height: kSpacingUnit * 3),
              CovidBanner(),
              SizedBox(height: kSpacingUnit * 3),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kSpacingUnit * 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Symptoms',
                      style: kTitleTextStyle,
                    ),
                    Text(
                      'View All',
                      style: kBodyTextStyle.copyWith(
                        color: kSecondaryTextColor,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: kSpacingUnit * 15,
                child: ListView(
                  shrinkWrap: true,
                  padding: EdgeInsets.only(
                    top: kSpacingUnit * 2,
                    bottom: kSpacingUnit * 3,
                  ),
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: kSpacingUnit * 3),
                    SymptomCard(
                      assetUrl: 'assets/icons/high_fever.svg',
                      title: 'High Fever',
                      description: 'Do mollit occaecat voluptate nulla fugiat.',
                    ),
                    SizedBox(width: kSpacingUnit * 3),
                    SymptomCard(
                      assetUrl: 'assets/icons/cough.svg',
                      title: 'Dry Cough',
                      description: 'Do mollit occaecat voluptate nulla fugiat.',
                    ),
                    SizedBox(width: kSpacingUnit * 3),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kSpacingUnit * 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Preventions',
                      style: kTitleTextStyle,
                    ),
                    Text(
                      'View All',
                      style: kBodyTextStyle.copyWith(
                        color: kSecondaryTextColor,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: kSpacingUnit * 2),
              Container(
                margin: EdgeInsets.symmetric(horizontal: kSpacingUnit * 3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    BoxPanel(
                      padding: EdgeInsets.all(kSpacingUnit),
                      child: SvgPicture.asset(
                        'assets/icons/mask.svg',
                        width: kSpacingUnit * 4,
                        height: kSpacingUnit * 4,
                      ),
                    ),
                    BoxPanel(
                      padding: EdgeInsets.all(kSpacingUnit),
                      child: SvgPicture.asset(
                        'assets/icons/stay_home.svg',
                        width: kSpacingUnit * 4,
                        height: kSpacingUnit * 4,
                      ),
                    ),
                    BoxPanel(
                      padding: EdgeInsets.all(kSpacingUnit),
                      child: SvgPicture.asset(
                        'assets/icons/no_handshake.svg',
                        width: kSpacingUnit * 4,
                        height: kSpacingUnit * 4,
                      ),
                    ),
                    BoxPanel(
                      padding: EdgeInsets.all(kSpacingUnit),
                      child: SvgPicture.asset(
                        'assets/icons/hand_wash.svg',
                        width: kSpacingUnit * 4,
                        height: kSpacingUnit * 4,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
