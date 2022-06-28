import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nsdd/pages/qualificationCards.dart';

import '../components/c_text_form_field.dart';
import '../components/dropdown.dart';
import '../customInputDecoration.dart';

class AppliedCourses extends StatefulWidget {
  const AppliedCourses({Key? key}) : super(key: key);

  @override
  State<AppliedCourses> createState() => _AppliedCoursesState();
}

class _AppliedCoursesState extends State<AppliedCourses> {
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
          "Applied Courses",
          style: Theme.of(context).textTheme.headline3,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
          child: Column(
            children: [
              Container(
                height: 140.h,
                child: Row(
                  children: [
                    Container(
                      width: 140.w,
                      height: 140.h,
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                      child: Image.asset("assets/images/courses1.png"),
                    ),
                    Container(
                      width: 190.w,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
