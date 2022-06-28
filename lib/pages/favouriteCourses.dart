import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nsdd/pages/qualificationCards.dart';

import '../components/c_text_form_field.dart';
import '../components/dropdown.dart';
import '../customInputDecoration.dart';

class FavoutieCourses extends StatefulWidget {
  const FavoutieCourses({Key? key}) : super(key: key);

  @override
  State<FavoutieCourses> createState() => _FavoutieCoursesState();
}

class _FavoutieCoursesState extends State<FavoutieCourses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Theme.of(context).cardColor,
        ),
        title: Text(
          "Favourite Courses",
          style: Theme.of(context).textTheme.headline3,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 16.h),
        child: Column(
          children: [
            card(
              context: context,
              programTitle: "Graphic Design",
              title1: "Charges",
              title2: "Program",
              title3: "Status",
              url: "assets/images/courses1.png",
              value1: "Free",
              value2: "6 Months",
              value3: "Mon-Fri",
            ),
            card(
              context: context,
              programTitle: "Mobile App Design",
              title1: "Charges",
              title2: "Program",
              title3: "Status",
              url: "assets/images/programmer.png",
              value1: "3500/Month",
              value2: "1 Year",
              value3: "Mon-Fri",
            ),
            card(
              context: context,
              programTitle: "Game Development",
              title1: "Charges",
              title2: "Program",
              title3: "Status",
              url: "assets/images/Gaming.png",
              value1: "7000/Month",
              value2: "8 Months",
              value3: "Mon-Fri",
            ),
            Spacer(),
            Align(
              alignment: FractionalOffset.bottomCenter,
              child: SvgPicture.asset(
                "assets/svg/down.svg",
                fit: BoxFit.fitWidth,
                alignment: Alignment.bottomLeft,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding card({
    required BuildContext context,
    required String url,
    required String programTitle,
    required String title1,
    required String value1,
    required String title2,
    required String value2,
    required String title3,
    required String value3,
  }) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.0.h),
      child: Container(
        height: 140.h,
        child: Row(
          children: [
            Container(
              width: 140.w,
              height: 140.h,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Image.asset(url),
            ),
            Container(
              width: 190.w,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.04),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                child: Column(children: [
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    programTitle,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  courseStats(title: title1, value: value1),
                  SizedBox(
                    height: 12.h,
                  ),
                  courseStats(title: title2, value: value2),
                  SizedBox(
                    height: 12.h,
                  ),
                  courseStats(title: title3, value: value3),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row courseStats({required String title, required String value}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title),
        Text(value),
      ],
    );
  }
}
