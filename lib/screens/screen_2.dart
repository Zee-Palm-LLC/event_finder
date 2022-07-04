import 'package:event_finder/data/constants.dart';
import 'package:event_finder/data/typography.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColor.korange,
      child: Center(
        child: Text(
          "Hello! World",
          style: kLargerTextStyle.copyWith(color: CustomColor.korange),
        ),
      ),
    );
  }
}
