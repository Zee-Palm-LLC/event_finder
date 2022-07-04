import 'package:event_finder/data/constants.dart';
import 'package:event_finder/model/event_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../data/typography.dart';

class CardScreen extends StatelessWidget {
  final EventList evlist;
  const CardScreen({Key? key, required this.evlist}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      body: Column(
        children: [
          Hero(
            tag: evlist.image,
            child: Material(
              type: MaterialType.transparency,
              child: Container(
                height: 500.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill, image: AssetImage(evlist.image))),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 25.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                                onPressed: () {
                                  Get.back();
                                },
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: CustomColor.kwhite,
                                )),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.move_down,
                                color: CustomColor.kwhite,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 40.w),
                        child: Text(evlist.date,
                            style: kMediumheadTextStyle.copyWith(
                                color: CustomColor.kwhite,
                                fontWeight: FontWeight.bold)

                            //   TextStyle(
                            //       fontSize: 22.sp,
                            //       color: CustomColor.kwhite,
                            //       fontWeight: FontWeight.bold),
                            ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 40.w),
                        child: Text(
                          evlist.month,
                          style: kMediumheadStyle.copyWith(
                              color: CustomColor.kwhite,
                              fontWeight: FontWeight.bold),

                          // TextStyle(
                          //     fontSize: 19,
                          //     color: CustomColor.kwhite,
                          //     fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 36.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 40.w),
                        child: Text(
                          evlist.caption,
                          style: kMedTextStyle.copyWith(
                              color: CustomColor.kwhite,
                              fontWeight: FontWeight.bold),

                          // TextStyle(
                          //     fontSize: 25,
                          //     color: CustomColor.kwhite,
                          //     fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 100.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 40.w),
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_pin,
                              color: CustomColor.kwhite,
                              size: 19,
                            ),
                            Text(
                              evlist.city + " , " + evlist.provincecode,
                              style: kMediumheadStyle.copyWith(
                                  color: CustomColor.kwhite,
                                  fontWeight: FontWeight.bold),
                              // TextStyle(
                              //     fontSize: 19,
                              //     color: CustomColor.kwhite,
                              //     fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )
                    ]),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30.w,
              top: 20.h,
              bottom: 10.h,
            ),
            child: Row(
              children: [
                SizedBox(
                  height: 50.h,
                  width: 75.w,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        left: 1.w,
                        child: CircleAvatar(
                          radius: 14.r,
                          backgroundColor: Colors.red,
                          backgroundImage: const AssetImage(
                            "assets/shutterstock_73614184.png",
                          ),
                        ),
                      ),
                      Positioned(
                        left: 22.w,
                        child: CircleAvatar(
                          radius: 14.r,
                          backgroundColor: Colors.green,
                          backgroundImage: const AssetImage(
                            "assets/family-730320_640.png",
                          ),
                        ),
                      ),
                      Positioned(
                        left: 44.w,
                        child: CircleAvatar(
                          radius: 10.r,
                          backgroundColor: Colors.black,
                          child: Text(
                            evlist.remianing.toString(),
                            style:
                                kVerysStyle.copyWith(color: CustomColor.kwhite),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "${evlist.actor} and ${evlist.join} friends joined this event",
                  style: kCardTextStyle.copyWith(
                    color: CustomColor.kblack,
                  ),

                  //  TextStyle(
                  //   fontSize:

                  //    14,
                  //   color: CustomColor.kblack,
                  //   //fontWeight: kBoldFontWeight
                  // ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30.w,
              right: 30.w,
              bottom: 10.h,
            ),
            child: Text(
              evlist.description,
              style: kCardTextStyle.copyWith(
                color: CustomColor.kgrey,
              ),
              //  TextStyle(
              //   fontSize: 14,
              //   color: CustomColor.kgrey,
              //   //fontWeight: kBoldFontWeight
              // ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
            child: Container(
              height: 100.h,
              width: 430.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/download (3).png"))),
              child: Center(
                child: CircleAvatar(
                  radius: 20.r,
                  backgroundColor: CustomColor.kwhite,
                  child: Icon(
                    Icons.location_pin,
                    color: CustomColor.korange,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30.w,
              right: 30.w,
              bottom: 10.h,
              top: 10.w,
            ),
            child: Row(
              children: [
                Container(
                  height: 58.h,
                  width: 70.w,
                  decoration: BoxDecoration(
                    color: CustomColor.kwhite,
                    border: Border.all(color: CustomColor.kgrey),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Center(
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.event,
                          size: 26,
                          color: CustomColor.kgrey,
                        )),
                  ),
                ),
                SizedBox(
                  width: 20.w,
                ),
                SizedBox(
                    height: 70.h,
                    width: 255.w,
                    child: ElevatedButton(
                        child: Text("Join Now", style: kSmallTextStyle),
                        style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all<Color>(
                                CustomColor.kwhite),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                CustomColor.kbuttonblack),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.r),
                            ))),
                        onPressed: () {
                          // Get.to(const MainScreen(),
                          //     transition: Transition.upToDown);
                        })),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
