import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nsdd/customInputDecoration.dart';
import 'package:nsdd/pages/applyiedCourses.dart';
import 'package:nsdd/pages/favouriteCourses.dart';
import 'package:nsdd/pages/forgot.dart';
import 'package:nsdd/pages/profile.dart';
import 'package:nsdd/pages/signup.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _userEmailController = TextEditingController();
  final TextEditingController _userPasswordController = TextEditingController();
  bool isObscure = true;
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _userEmailController.dispose();
    _userPasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 104.h),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Sign in",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),

                SizedBox(
                  height: 15.h,
                ),
                TextFormField(
                  controller: _userEmailController,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  decoration: customInputDecoration(
                    text: "37454 - 435 - 565 - 54654",
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
                  controller: _userPasswordController,
                  obscureText: isObscure,
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.next,
                  decoration: customInputDecoration(
                      text: "Password",
                      prefixIcon: Icons.lock,
                      suffixIcon: Icons.remove_red_eye,
                      press: () {
                        setState(() {
                          isObscure = !isObscure;
                        });
                      }),
                ),

                SizedBox(
                  height: 20.h,
                ),

                // Feild 3
                Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ForgotScreen()));
                    },
                    child: Text("Forgot password?",
                        style: Theme.of(context).textTheme.bodyText1),
                  ),
                ),
                SizedBox(
                  height: 46.h,
                ),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
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
                      'SIGN UP',
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
                    Text("  Don’t have an account? "),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => SignUp(),
                          ),
                        );
                      },
                      child: Text(
                        "Sign Up",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ],
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => AppliedCourses()));
                    },
                    child: Text("Applied Screen")),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => FavoutieCourses()));
                    },
                    child: Text("Favorite Courses Screen")),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ProfileScreen()));
                    },
                    child: Text("Profile Screen")),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
