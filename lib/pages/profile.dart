import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nsdd/utils/constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

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
          "Profile",
          style: Theme.of(context).textTheme.headline3,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0.w),
            child: Icon(
              Icons.logout,
              color: Theme.of(context).cardColor,
            ),
          ),
          Text("Logout"),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          image(context),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 60.0.w),
            child: Column(
              children: [
                stats(
                    iconData: Icons.fingerprint,
                    text: "2432-343-234-234-23-4",
                    context: context),
                stats(
                    iconData: Icons.person,
                    text: "Father Name",
                    context: context),
                stats(iconData: Icons.person, text: "Male", context: context),
                stats(
                    iconData: Icons.favorite, text: "Sigle", context: context),
                stats(
                    iconData: Icons.language,
                    text: "English/Urdu/Punjabi",
                    context: context),
                stats(
                    iconData: Icons.phone,
                    text: "238438297489324923",
                    context: context),
                stats(
                    iconData: Icons.person,
                    text: "Type.....",
                    context: context),
                stats(
                    iconData: Icons.person,
                    text: "Type.....",
                    context: context),
                stats(
                    iconData: Icons.person,
                    text: "Type.....",
                    context: context),
                stats(
                    iconData: Icons.person,
                    text: "Type.....",
                    context: context),
                stats(
                    iconData: Icons.person,
                    text: "Type.....",
                    context: context),
                stats(
                    iconData: Icons.person,
                    text: "Type.....",
                    context: context),
              ],
            ),
          ),
        ]),
      ),
    );
  }

  Widget stats(
      {required IconData iconData,
      required String text,
      required BuildContext context}) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.0.h),
      child: Row(
        children: [
          Icon(
            iconData,
            size: 44,
          ),
          SizedBox(
            width: 44.w,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 14.sp,
            ),
          ),
        ],
      ),
    );
  }

  Widget image(context) {
    return Center(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              CircleAvatar(
                radius: 50,
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  width: 44.w,
                  height: 44.h,
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Text("Neel Abbas", style: Theme.of(context).textTheme.headline4),
          Text("Student"),
        ],
      ),
    );
  }
}
