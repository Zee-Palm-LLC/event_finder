import 'package:event_finder/data/constants.dart';
import 'package:event_finder/data/typography.dart';
import 'package:event_finder/model/event_list.dart';
import 'package:event_finder/model/progress_model.dart';
import 'package:event_finder/screens/back_screen.dart';
import 'package:event_finder/widgets/event_container.dart';
import 'package:event_finder/widgets/event_list_tile.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColor.korange,
      child: Scaffold(
          backgroundColor: CustomColor.kwhite,
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(children: [
              Container(
                padding: EdgeInsets.only(
                  top: 50.h,
                  left: 30.w,
                  right: 30.w,
                  bottom: 10.h,
                ),
                height: 100.h,
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Current Location",
                          style:
                              kCardTextStyle.copyWith(color: CustomColor.kgrey),
                          // TextStyle(
                          //   fontSize: 14,
                          //   color: CustomColor.kgrey,
                          // ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_pin,
                              color: CustomColor.korange,
                              size: 14,
                            ),
                            Text(
                              "Surakarta" "," "INA",
                              style: kCardTextStyle.copyWith(
                                  color: CustomColor.kblack,
                                  fontWeight: kBoldFontWeight),

                              // TextStyle(
                              //     fontSize: 14,
                              //     color: CustomColor.kblack,
                              //     fontWeight: kBoldFontWeight),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      height: 40.h,
                      width: 40.w,
                      child: Stack(children: [
                        CircleAvatar(
                          radius: 20.r,
                          backgroundColor: Colors.amber,
                          backgroundImage: const AssetImage(
                            "assets/shutterstock_73614184.png",
                          ),
                        ),
                        Positioned(
                          left: 28.w,
                          child: CircleAvatar(
                            radius: 5.r,
                            backgroundColor: CustomColor.korange,
                          ),
                        ),
                      ]),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 10.h,
                  left: 30.w,
                  right: 30.w,
                  bottom: 10.h,
                ),
                //padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: CustomColor.kwhite,
                    boxShadow: boxshadow),
                child: TextField(
                    decoration: InputDecoration(
                  hintText: "Search for event",
                  hintStyle: klabelText.copyWith(color: CustomColor.kgrey),
                  //TextStyle(fontSize: 15, color: CustomColor.kgrey),
                  prefixIcon: Icon(
                    Icons.search,
                    color: CustomColor.korange,
                  ),
                  prefixIconColor: CustomColor.korange,
                  border: InputBorder.none,
                )),
              ),
              SizedBox(
                height: 430.h,
                width: double.infinity,
                child: ListView.separated(
                  padding: EdgeInsets.only(
                    top: 30.h,
                    bottom: 20.h,
                    left: 30.w,
                    right: 20.w,
                  ),
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return EventContainer(
                      event: elist[index],
                    );
                  },
                  itemCount: elist.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 10.w,
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 30.w,
                  right: 30.w,
                ),
                child: Row(
                  children: [
                    Text(
                      "Event for you ",
                      style: kMediumTextStyle.copyWith(
                          color: CustomColor.kblack,
                          fontWeight: kBoldFontWeight),

                      //  TextStyle(
                      //     fontSize: 18,
                      //     color: CustomColor.kblack,
                      //     fontWeight: kBoldFontWeight),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {
                        Get.to(const BackScreen(),
                            transition: Transition.downToUp);
                      },
                      child: Text(
                        "View More",
                        style: kCardTextStyle.copyWith(
                          color: CustomColor.kgrey,
                        ),
                        //  TextStyle(
                        //   fontSize: 14,
                        //   color: CustomColor.kgrey,
                        // )
                      ),
                    ),
                  ],
                ),
              ),
              EventListTile(
                eventlist: listtile[0],
              ),
              EventListTile(
                eventlist: listtile[1],
              ),
              EventListTile(
                eventlist: listtile[2],
              ),

              // SizedBox(
              //   height: 300.h,
              //   width: double.infinity,
              //   child: ListView.separated(
              //     padding: EdgeInsets.only(
              //       top: 10.h,
              //       bottom: 20.h,
              //     ),
              //     scrollDirection: Axis.vertical,
              //     physics: const NeverScrollableScrollPhysics(),
              //     itemBuilder: (BuildContext context, int index) {
              //       return EventListTile(
              //         eventlist: listtile[index],
              //       );
              //     },
              //     itemCount: elist.length,
              //     separatorBuilder: (BuildContext context, int index) {
              //       return SizedBox(
              //         height: 20.w,
              //       );
              //     },
              //   ),
              // ),
            ]),
          )),
    );
  }
}
