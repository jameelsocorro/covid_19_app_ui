import 'package:covid_19_app_ui/constants.dart';
import 'package:flutter/material.dart';

class BoxPanel extends StatelessWidget {
  final Widget child;
  final double width;

  const BoxPanel({
    Key key,
    this.child,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kSpacingUnit * 2),
      width: this.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(kSpacingUnit * 2),
        boxShadow: [kBoxShadow],
      ),
      child: this.child,
    );
  }
}
