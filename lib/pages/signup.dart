import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nsdd/pages/login_page.dart';
import 'package:nsdd/pages/personalInformation.dart';

import '../customInputDecoration.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _userEmailController = TextEditingController();
  final TextEditingController _userFullNameController = TextEditingController();
  final TextEditingController _userShortNameController =
      TextEditingController();
  final TextEditingController _userPhoneNoController = TextEditingController();
  final TextEditingController _userPasswordController = TextEditingController();
  final TextEditingController _userCPasswordController =
      TextEditingController();
  bool pIsObscure = true;
  bool cpIsObscure = true;
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _userEmailController.dispose();
    _userPasswordController.dispose();
    _userShortNameController.dispose();
    _userPhoneNoController.dispose();
    _userCPasswordController.dispose();
    _userFullNameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 193.h,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  right: 0,
                  child: SvgPicture.asset(
                    "assets/svg/header.svg",
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: SvgPicture.asset(
                    "assets/svg/left.svg",
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Sign Up",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ),

                SizedBox(
                  height: 15.h,
                ),
                TextFormField(
                  style: Theme.of(context).textTheme.caption,
                  controller: _userEmailController,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: customInputDecoration(
                    text: "72438 - 4543 - 45435 - 45435",
                    prefixIcon: Icons.fingerprint,
                    suffixIcon: null,
                    press: () {},
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),

                // Feild 2

                TextFormField(
                  style: Theme.of(context).textTheme.caption,
                  controller: _userPasswordController,
                  obscureText: pIsObscure,
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.next,
                  decoration: customInputDecoration(
                      text: "Password",
                      prefixIcon: Icons.lock,
                      suffixIcon: Icons.remove_red_eye,
                      press: () {
                        setState(() {
                          pIsObscure = !pIsObscure;
                        });
                      }),
                ),

                SizedBox(
                  height: 20.h,
                ),
                TextFormField(
                  style: Theme.of(context).textTheme.caption,
                  obscureText: cpIsObscure,
                  controller: _userCPasswordController,
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.next,
                  decoration: customInputDecoration(
                      text: "Confirm Password",
                      prefixIcon: Icons.lock,
                      suffixIcon: Icons.remove_red_eye,
                      press: () {
                        setState(() {
                          cpIsObscure = !cpIsObscure;
                        });
                      }),
                ),
                SizedBox(
                  height: 20.h,
                ),
                TextFormField(
                  style: Theme.of(context).textTheme.caption,
                  controller: _userFullNameController,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  decoration: customInputDecoration(
                    text: "Full Name",
                    prefixIcon: Icons.person,
                    suffixIcon: null,
                    press: () {},
                  ),
                ),

                SizedBox(
                  height: 20.h,
                ),
                TextFormField(
                  style: Theme.of(context).textTheme.caption,
                  controller: _userShortNameController,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  decoration: customInputDecoration(
                    text: "Short Name",
                    prefixIcon: Icons.person,
                    suffixIcon: null,
                    press: () {},
                  ),
                ),

                SizedBox(
                  height: 20.h,
                ),
                TextFormField(
                  style: Theme.of(context).textTheme.caption,
                  controller: _userPhoneNoController,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  decoration: customInputDecoration(
                    text: "Phone Number",
                    prefixIcon: Icons.phone,
                    suffixIcon: null,
                    press: () {},
                  ),
                ),

                SizedBox(
                  height: 20.h,
                ),

                // Feild 3

                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PersonalInfomation()));
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
                      'COMPLETE PROFILE',
                      style: TextStyle(
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account? "),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => LoginScreen()));
                      },
                      child: Text(
                        "Sign In",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
