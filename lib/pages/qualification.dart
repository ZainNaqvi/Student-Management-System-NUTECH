import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nsdd/pages/qualificationCards.dart';

import '../components/c_text_form_field.dart';
import '../components/dropdown.dart';
import '../customInputDecoration.dart';

class QualificationScreen extends StatefulWidget {
  const QualificationScreen({Key? key}) : super(key: key);

  @override
  State<QualificationScreen> createState() => _QualificationScreenState();
}

class _QualificationScreenState extends State<QualificationScreen> {
  List<DropdownMenuItem<String>> get listOfQualification {
    return [
      DropdownMenuItem(child: Text("BSC Computer Science"), value: "1"),
      DropdownMenuItem(child: Text("FSC Computer Science "), value: "2"),
      DropdownMenuItem(child: Text("MATRIC"), value: "3"),
      DropdownMenuItem(child: Text("OTHERS"), value: "4"),
    ];
  }

  List<DropdownMenuItem<String>> get listOfBoards {
    return [
      DropdownMenuItem(child: Text("FBISE"), value: "1"),
      DropdownMenuItem(child: Text("ABISE "), value: "2"),
      DropdownMenuItem(child: Text("KIBSE"), value: "3"),
      DropdownMenuItem(child: Text("OTHERS"), value: "4"),
    ];
  }

  var _selectedQualification;
  var _selectBoard;
  TextEditingController _userDegreeTitle = TextEditingController();
  TextEditingController _userObtainedMarks = TextEditingController();
  TextEditingController _userTotalMarks = TextEditingController();
  TextEditingController _userPassingYear = TextEditingController();
  TextEditingController _userBoardOrUniversity = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _userBoardOrUniversity.dispose();
    _userDegreeTitle.dispose();
    _userObtainedMarks.dispose();
    _userPassingYear.dispose();
    _userTotalMarks.dispose();
  }

  var birthDateInString = '##/##/####';

  dynamic birthDate = 1;
  @override
  Widget build(BuildContext context) {
    print(birthDateInString);
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
                      "assets/svg/personal.svg",
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
                      "Qualification ",
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ),

                  SizedBox(
                    height: 20.h,
                  ),
                  dropDownButtonFormFIeld(
                    context: context,
                    value: _selectedQualification,
                    suffixIcon: null,
                    press: () {},
                    prefixIcon: Icons.disabled_visible,
                    items: listOfQualification,
                    hintText: "Qualification Level",
                    onChanged: (value) {
                      setState(() {
                        _selectedQualification = value;
                      });
                    },
                    onSaved: (value) {
                      setState(() {
                        _selectedQualification = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  // Feild 3
                  CTextFormField(
                    prefixIcon: Icon(Icons.school),
                    controller: _userDegreeTitle,
                    hintText: 'Degree Title ',
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CTextFormField(
                    prefixIcon: Icon(Icons.school),
                    controller: _userObtainedMarks,
                    hintText: 'Obtained Marks',
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CTextFormField(
                    prefixIcon: Icon(Icons.school),
                    controller: _userTotalMarks,
                    hintText: 'Total Marks',
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  TextFormField(
                    style: Theme.of(context).textTheme.caption,
                    readOnly: true,
                    controller: _userPassingYear,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    decoration: customInputDecoration(
                      text: "$birthDateInString",
                      prefixIcon: Icons.date_range,
                      suffixIcon: Icons.arrow_drop_down,
                      press: () async {
                        final datePick = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1900),
                          lastDate: DateTime(2100),
                        );

                        if (datePick != null && datePick != birthDate) {
                          setState(() {
                            birthDate = datePick;
                            var isDateSelected = true;
                            birthDate;
                            birthDateInString =
                                "${birthDate.month}/${birthDate.day}/${birthDate.year}";
                          });
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  dropDownButtonFormFIeld(
                    context: context,
                    value: _selectBoard,
                    suffixIcon: null,
                    press: () {},
                    prefixIcon: Icons.disabled_visible,
                    items: listOfBoards,
                    hintText: "Board or Univerisity",
                    onChanged: (value) {
                      setState(() {
                        _selectBoard = value;
                      });
                    },
                    onSaved: (value) {
                      setState(() {
                        _selectBoard = value;
                      });
                    },
                  ),

                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => QualificationScrernCard(),
                          ),
                        );
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
                        'SAVE',
                        style: TextStyle(
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
