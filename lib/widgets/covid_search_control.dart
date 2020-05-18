import 'package:covid_19_app_ui/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CovidSearchControl extends StatelessWidget {
  const CovidSearchControl({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kSpacingUnit * 3),
      padding: EdgeInsets.symmetric(horizontal: kSpacingUnit * 2.5),
      height: kSpacingUnit * 5,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(kSpacingUnit * 3),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: SizedBox(
              height: kSpacingUnit * 3.5,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: kSubTitleTextStyle.copyWith(
                    color: kSecondaryTextColor,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          SvgPicture.asset(
            'assets/icons/search.svg',
            height: kSpacingUnit * 2,
            width: kSpacingUnit * 2,
          ),
        ],
      ),
    );
  }
}
