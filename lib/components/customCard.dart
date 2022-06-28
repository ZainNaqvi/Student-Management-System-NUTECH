import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nsdd/components/stastics.dart';

Padding card(BuildContext context) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.0.w),
    child: Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10.r)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Bachelors in Computer Science",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
              "International Islamic University Islamabad",
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(
              height: 16.h,
            ),
            stactics(
              context: context,
              title: "Obtained Marks",
              value: "2440",
            ),
            SizedBox(
              height: 16.h,
            ),
            stactics(
              context: context,
              title: "Obtained Marks",
              value: "2440",
            ),
            SizedBox(
              height: 16.h,
            ),
            stactics(
              context: context,
              title: "Obtained Marks",
              value: "2440",
            ),
          ],
        ),
      ),
    ),
  );
}
