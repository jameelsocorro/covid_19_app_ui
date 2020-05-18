import 'package:flutter/material.dart';
import '../constants.dart';

class CovidBanner extends StatelessWidget {
  const CovidBanner({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kSpacingUnit * 3),
      decoration: BoxDecoration(
        color: kBlueColor,
        borderRadius: BorderRadius.circular(kSpacingUnit * 2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.all(kSpacingUnit * 2).copyWith(
              right: 0,
            ),
            child: Column(
              children: <Widget>[
                Text(
                  'Stay at home to \nStop corona virus',
                  style: kTitleTextStyle.copyWith(
                    fontFamily: 'SF Pro Rounded',
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: kSpacingUnit * 3),
                Container(
                  height: kSpacingUnit * 4,
                  width: kSpacingUnit * 14,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(kSpacingUnit * 3),
                  ),
                  child: Center(
                    child: Text(
                      'Know more',
                      style: kSubTitleTextStyle,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/images/banner_img.png',
            height: kSpacingUnit * 15,
            width: kSpacingUnit * 15,
          ),
        ],
      ),
    );
  }
}
