import 'package:event_finder/data/constants.dart';
import 'package:event_finder/screens/back_screen.dart';
import 'package:event_finder/screens/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../data/typography.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColor.korange,
      child: Scaffold(
        backgroundColor: CustomColor.kwhite,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50.h,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20.w,
              ),
              child: Text(
                "Find Interested \nEvent To Join",
                style: kLargerTextStyle.copyWith(
                    color: CustomColor.kblack, fontWeight: kBoldFontWeight),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20.w,
              ),
              child: Text(
                "We share all events like charity, \nworkshop, blood drive etc",
                style: kHeadingStyle.copyWith(
                  color: CustomColor.kgrey,
                ),
              ),
            ),
            SizedBox(
              height: 520.h,
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned(
                    left: 50.w,
                    top: 50.h,
                    child: Container(
                      height: 90.h,
                      width: 90.w,
                      decoration: BoxDecoration(
                          boxShadow: boxshadow,
                          borderRadius: BorderRadius.circular(kContainerRadius),
                          border:
                              Border.all(color: CustomColor.kwhite, width: 4.w),
                          color: Colors.deepOrange,
                          image: const DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                "assets/Depositphotos_72034089_m-2015.png",
                              ))),
                    ),
                  ),
                  Positioned(
                    left: 270.w,
                    top: 60.h,
                    child: Container(
                      height: 70.h,
                      width: 70.w,
                      decoration: BoxDecoration(
                          boxShadow: boxshadow,
                          borderRadius: BorderRadius.circular(kContainerRadius),
                          border:
                              Border.all(color: CustomColor.kwhite, width: 4),
                          color: Colors.deepOrange,
                          image: const DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                "assets/images.png",
                              ))),
                    ),
                  ),
                  Positioned(
                    left: 170.w,
                    top: 190.h,
                    child: Container(
                      height: 100.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                          boxShadow: boxshadow,
                          borderRadius: BorderRadius.circular(kContainerRadius),
                          border:
                              Border.all(color: CustomColor.kwhite, width: 4.w),
                          color: Colors.deepOrange,
                          image: const DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                "assets/istockphoto-1124502931-612x612.png",
                              ))),
                    ),
                  ),
                  Positioned(
                    left: 280.w,
                    top: 340.h,
                    child: Container(
                      height: 85.h,
                      width: 85.w,
                      decoration: BoxDecoration(
                          boxShadow: boxshadow,
                          borderRadius: BorderRadius.circular(kContainerRadius),
                          border:
                              Border.all(color: CustomColor.kwhite, width: 4),
                          color: Colors.deepOrange,
                          image: const DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                "assets/family-730320_640.png",
                              ))),
                    ),
                  ),
                  Positioned(
                    left: 55.w,
                    top: 410.h,
                    child: Container(
                      height: 82.h,
                      width: 82.w,
                      decoration: BoxDecoration(
                          boxShadow: boxshadow,
                          borderRadius: BorderRadius.circular(kContainerRadius),
                          border:
                              Border.all(color: CustomColor.kwhite, width: 4),
                          color: Colors.deepOrange,
                          image: const DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                "assets/shutterstock_73614184.png",
                              ))),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 60.w, bottom: 20.h),
              child: SizedBox(
                  height: 60.h,
                  width: 320.h,
                  child: ElevatedButton(
                      child: Text("Register", style: kSmallTextStyle),
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(
                              CustomColor.kwhite),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              CustomColor.kbuttonblack),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(ktenRadius),
                          ))),
                      onPressed: () {
                        Get.to(const NavigationBarScreen(),
                            transition: Transition.downToUp);
                      })),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "already Have an account?",
                  style: kCardTextStyle.copyWith(color: CustomColor.kgrey),
                ),
                TextButton(
                    onPressed: () {
                      Get.to(const BackScreen(),
                          transition: Transition.downToUp);
                    },
                    child: Text(
                      "Sign in",
                      style:
                          kCardTextStyle.copyWith(color: CustomColor.korange),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
