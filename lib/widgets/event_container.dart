import 'dart:ui';

import 'package:event_finder/data/constants.dart';
import 'package:event_finder/data/typography.dart';
import 'package:event_finder/model/event_list.dart';
import 'package:event_finder/screens/card_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EventContainer extends StatelessWidget {
  final EventList event;
  const EventContainer({
    Key? key,
    required this.event,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(CardScreen(
          evlist: event,
        ));
      },
      child: Container(
        // margin: EdgeInsets.only(
        //   top: 30.h,
        //   bottom: 20.h,
        //   left: 30.w,
        //   right: 30.w,
        // ),
        height: 430.h,
        width: 300.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24.r),
          boxShadow: boxshadow,
          color: CustomColor.kwhite,
        ),
        child: Column(
          children: [
            Hero(
              tag: event.image,
              child: Material(
                type: MaterialType.transparency,
                child: Container(
                  margin: EdgeInsets.only(top: 15.h, bottom: 25.h),
                  height: 260.h,
                  width: 270.w,
                  decoration: BoxDecoration(
                      color: CustomColor.korange,
                      borderRadius: BorderRadius.circular(24.r),
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            event.image,
                          ))),
                  child: Padding(
                    padding: EdgeInsets.only(left: 30.w),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 24.h,
                          ),
                          Text(
                            event.date,
                            style: kMediumTextStyle.copyWith(
                              color: CustomColor.kwhite,
                            ),

                            // TextStyle(
                            //   fontSize: 18,
                            //   color: CustomColor.kwhite,
                            // ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            event.month,
                            style: klabelText.copyWith(
                              color: CustomColor.kwhite,
                            ),

                            //  TextStyle(
                            //   fontSize: 15,
                            //   color: CustomColor.kwhite,
                            // ),
                          ),
                          SizedBox(
                            height: 30.h,
                          ),
                          Text(
                            event.caption,
                            style: kVerySmallTextStyle.copyWith(
                                color: CustomColor.kwhite,
                                fontWeight: FontWeight.w500),

                            // TextStyle(
                            //     fontSize: 20,
                            //     color: CustomColor.kwhite,
                            //     fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 64.h,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_pin,
                                color: CustomColor.kwhite,
                                size: 14,
                              ),
                              Text(
                                event.city + " , " + event.provincecode,
                                style: kCardTextStyle.copyWith(
                                  color: CustomColor.kwhite,
                                ),

                                //  TextStyle(
                                //   fontSize: 14,
                                //   color: CustomColor.kwhite,
                                // ),
                              )
                            ],
                          )
                        ]),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: 20.h,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Text(
                      "${event.join} Joined",
                      style: kMediumTextStyle.copyWith(
                          color: CustomColor.kblack,
                          fontWeight: kBoldFontWeight),

                      //  TextStyle(
                      //     fontSize: 18,
                      //     color: CustomColor.kblack,
                      //     fontWeight: kBoldFontWeight),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 50.h,
                    width: 130.w,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          left: 1.w,
                          child: CircleAvatar(
                            radius: 17.r,
                            backgroundImage: const AssetImage(
                              "assets/family-730320_640.png",
                            ),
                          ),
                        ),
                        Positioned(
                          left: 28.w,
                          child: CircleAvatar(
                            radius: 17.r,
                            backgroundImage: const AssetImage(
                              "assets/shutterstock_73614184.png",
                            ),
                          ),
                        ),
                        Positioned(
                          left: 54.w,
                          child: CircleAvatar(
                            radius: 17.r,
                            backgroundImage: const AssetImage(
                              "assets/download (2).png",
                            ),
                          ),
                        ),
                        Positioned(
                          left: 80.w,
                          child: CircleAvatar(
                            radius: 13.r,
                            backgroundColor: CustomColor.kblack,
                            child: Center(
                              child: Text(
                                event.remianing.toString(),
                                style: kVerysStyle.copyWith(
                                    color: CustomColor.kwhite),

                                //  TextStyle(
                                //     fontSize: 13, color: CustomColor.kwhite),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
