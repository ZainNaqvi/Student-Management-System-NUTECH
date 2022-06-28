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
        leading: Icon(Icons.arrow_back_ios),
        title: Text(
          "Qualification",
          style: Theme.of(context).textTheme.subtitle2,
        ),
        centerTitle: true,
        actions: [Icon(Icons.add)],
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
                    height: 8.h,
                  ),
                  card(context),
                  SizedBox(
                    height: 8.h,
                  ),
                  card(context),
                ],
              ),
            ),
            Stack(
              children: [
                SizedBox(
                  height: 173.h,
                  child: Positioned(
                    bottom: 0,
                    child: SvgPicture.asset("assets/svg/down.svg"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
