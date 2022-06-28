import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nsdd/components/stastics.dart';

import '../components/customCard.dart';

class QualificationScrernCard extends StatelessWidget {
  const QualificationScrernCard({Key? key}) : super(key: key);

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
          "Qualification",
          style: Theme.of(context).textTheme.headline3,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0.w),
            child: Icon(
              Icons.add,
              color: Theme.of(context).cardColor,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 44.h),
              child: Column(
                children: [
                  card(context),
                  SizedBox(
                    height: 16.h,
                  ),
                  card(context),
                  SizedBox(
                    height: 16.h,
                  ),
                  card(context),
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
            // Stack(
            //   children: [
            //     SizedBox(
            //       height: 173.h,
            //       child: Positioned(
            //         bottom: 0,
            //         child: SvgPicture.asset("assets/svg/down.svg"),
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
