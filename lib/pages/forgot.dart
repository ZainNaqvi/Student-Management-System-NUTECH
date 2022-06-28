import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nsdd/pages/login_page.dart';

import '../customInputDecoration.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({Key? key}) : super(key: key);

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  final TextEditingController _userpinController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      constraints: BoxConstraints(maxWidth: 800),
      child: Column(
        children: [
          SizedBox(
            height: 173.h,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  right: 0,
                  child: SvgPicture.asset(
                    "assets/svg/header.svg",
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 60.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(
                      color: Color(0xFF8B010B),
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                TextFormField(
                  controller: _userpinController,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  decoration: customInputDecoration(
                    text: "Contact No",
                    prefixIcon: Icons.phone,
                    suffixIcon: null,
                    press: () {},
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 200.h),
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => LoginScreen()));
                    },
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Color(0xFF8B010B),
                      padding: EdgeInsets.symmetric(vertical: 20.h),
                      textStyle: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    child: const Text(
                      'SEND CODE',
                      style: TextStyle(
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
