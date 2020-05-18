import 'package:covid_19_app_ui/constants.dart';
import 'package:covid_19_app_ui/widgets/box_panel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SymptomCard extends StatelessWidget {
  final String assetUrl;
  final String title;
  final String description;

  const SymptomCard({
    Key key,
    this.assetUrl,
    this.title,
    this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BoxPanel(
      width: kSpacingUnit * 25,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            this.assetUrl,
            height: kSpacingUnit * 5,
            width: kSpacingUnit * 5,
          ),
          SizedBox(width: kSpacingUnit * 2),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  this.title,
                  style: kSubTitleTextStyle,
                ),
                SizedBox(height: kSpacingUnit),
                Text(
                  this.description,
                  style: kBodyTextStyle,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
