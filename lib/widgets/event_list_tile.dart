import 'package:event_finder/data/constants.dart';
import 'package:event_finder/data/typography.dart';

import 'package:event_finder/model/progress_model.dart';
import 'package:event_finder/screens/back_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EventListTile extends StatelessWidget {
  final ListTileModel eventlist;
  const EventListTile({
    Key? key,
    required this.eventlist,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      margin: EdgeInsets.only(left: 30.w, right: 30.w, top: 10.h, bottom: 5.w),
      decoration: BoxDecoration(
          color: CustomColor.kwhite,
          boxShadow: boxshadow = [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 10,
              offset: const Offset(1, 1), // changes position of shadow
            )
          ]),
      child: ListTile(
          leading: Container(
            height: 95.h,
            width: 70.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    "assets/download (2).png",
                  )),
              color: Colors.greenAccent,
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    eventlist.month,
                    style: kSmallTextStyle.copyWith(
                      color: CustomColor.kwhite,
                      fontWeight: kBoldFontWeight,
                    ),

                    // TextStyle(
                    //   fontSize: 17,
                    //   color: CustomColor.kwhite,
                    //   fontWeight: kBoldFontWeight,
                    // ),
                  ),
                  Text(
                    eventlist.date.toString(),
                    style: kCardTextStyle.copyWith(
                        color: CustomColor.kwhite, fontWeight: kBoldFontWeight),

                    //  TextStyle(
                    //   fontSize: 14,
                    //   color: CustomColor.kwhite,
                    //   fontWeight: kBoldFontWeight,
                    // ),
                  )
                ],
              ),
            ),
          ),
          trailing: SizedBox(
            height: 30.h,
            width: 80.w,

            child: ElevatedButton(
              child: Text("Join",
                  style: kCardTextStyle.copyWith(fontWeight: FontWeight.bold)),
              onPressed: () {},
              style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(CustomColor.kblack),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(CustomColor.kwhitegrey),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ))),
            ),
            //   child: ElevatedButton(
            //       child: Text("Join", style: kCardTextStyle),
            //       style: ButtonStyle(
            //           foregroundColor:
            //               MaterialStateProperty.all<Color>(CustomColor.kblack),
            //           backgroundColor: MaterialStateProperty.all<Color>(
            //               CustomColor.kblack.withOpacity(0.2)),
            //           shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            //               RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(10.r),
            //           ))),
            //       onPressed: () {
            //         Get.to(const BackScreen(), transition: Transition.upToDown);
            //       }),
          ),
          title: Text(
            eventlist.title,
            style: knewText.copyWith(
                color: CustomColor.kblack, fontWeight: kBoldFontWeight),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                eventlist.duration,
                style: kCardTextStyle.copyWith(color: CustomColor.kgrey),
              ),
              Text(
                eventlist.city + "," + eventlist.provincecode,
                style: kCardTextStyle.copyWith(color: CustomColor.kgrey),
              ),
            ],
          )),
    );
  }
}
