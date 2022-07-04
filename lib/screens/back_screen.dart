import 'package:event_finder/data/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BackScreen extends StatelessWidget {
  const BackScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: CustomColor.kwhite,
        body: Container(
          margin: EdgeInsets.only(
            top: 40.h,
            left: 30.w,
          ),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              size: 30,
              color: CustomColor.korange,
            ),
            onPressed: () {
              Get.back();
            },
          ),
        ),
      ),
    );
  }
}
