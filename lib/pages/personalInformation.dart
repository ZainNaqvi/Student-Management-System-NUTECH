import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:nsdd/pages/login_page.dart';
import 'package:nsdd/pages/qualification.dart';

import '../components/c_text_form_field.dart';
import '../components/dropdown.dart';
import '../customInputDecoration.dart';

class PersonalInfomation extends StatefulWidget {
  const PersonalInfomation({Key? key}) : super(key: key);

  @override
  State<PersonalInfomation> createState() => _PersonalInfomationState();
}

class _PersonalInfomationState extends State<PersonalInfomation> {
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _userTestController = TextEditingController();

  final TextEditingController _userShortNameController =
      TextEditingController();
  final TextEditingController _userIdController = TextEditingController();
  final TextEditingController _userGenderController = TextEditingController();
  final TextEditingController _userFathersNameController =
      TextEditingController();
  final TextEditingController _userDateOfBirthController =
      TextEditingController();
  final TextEditingController _userFathersOccuptionController =
      TextEditingController();
  final TextEditingController _userEmailController = TextEditingController();
  final TextEditingController _userContactNumberController =
      TextEditingController();
  final TextEditingController _userOtherContactNumberController =
      TextEditingController();
  final TextEditingController _userGuardianContactNumberController =
      TextEditingController();
  final TextEditingController _userPostalAddressController =
      TextEditingController();
  final TextEditingController _userPermanentAddressController =
      TextEditingController();

  bool isObscure = true;
  List<DropdownMenuItem<String>> get listOfValueOfGender {
    return [
      DropdownMenuItem(child: Text("MALE"), value: "male"),
      DropdownMenuItem(child: Text("FEMALE"), value: "female"),
      DropdownMenuItem(child: Text("OTHERS"), value: "others"),
    ];
  }

  List<DropdownMenuItem<String>> get listOfValueOfFathersOccuption {
    return [
      DropdownMenuItem(child: Text("PRIVATE JOB"), value: "1"),
      DropdownMenuItem(child: Text("GOVERNMENT JOB"), value: "2"),
      DropdownMenuItem(child: Text("OTHERS"), value: "3"),
    ];
  }

  List<DropdownMenuItem<String>> get listOfDomicileProvince {
    return [
      DropdownMenuItem(child: Text("KPK"), value: "1"),
      DropdownMenuItem(child: Text("PUNJAB "), value: "2"),
      DropdownMenuItem(child: Text("OTHERS"), value: "3"),
    ];
  }

  List<DropdownMenuItem<String>> get listOfMinorities {
    return [
      DropdownMenuItem(child: Text("HINDU"), value: "1"),
      DropdownMenuItem(child: Text("BANGALI "), value: "2"),
      DropdownMenuItem(child: Text("OTHERS"), value: "3"),
    ];
  }

  List<DropdownMenuItem<String>> get listOfDisability {
    return [
      DropdownMenuItem(child: Text("A"), value: "1"),
      DropdownMenuItem(child: Text("B "), value: "2"),
      DropdownMenuItem(child: Text("NONE"), value: "3"),
    ];
  }

  List<DropdownMenuItem<String>> get listOfNationality {
    return [
      DropdownMenuItem(child: Text("PAKISTANI"), value: "1"),
      DropdownMenuItem(child: Text("HINDU "), value: "2"),
      DropdownMenuItem(child: Text("OTHERS"), value: "3"),
    ];
  }

  var _selectedValueGender;
  var _selectedValueFatherOccuption;
  var _selectedDomicile;
  var _selectedMinority;
  var _selectedDisability;
  var _selectedNationality;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _userEmailController.dispose();
    _userTestController.dispose();
    _userFathersOccuptionController.dispose();
    _userNameController.dispose();
    _userDateOfBirthController.dispose();
    _userShortNameController.dispose();
    _userIdController.dispose();
    _userGenderController.dispose();
    _userFathersNameController.dispose();
    _userContactNumberController.dispose();
    _userOtherContactNumberController.dispose();
    _userGuardianContactNumberController.dispose();
    _userPostalAddressController.dispose();
    _userPermanentAddressController.dispose();
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
                    "Personal Infomation",
                    style: Theme.of(context)
                        .textTheme
                        .headline2!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),

                SizedBox(
                  height: 20.h,
                ),
                TextFormField(
                  style: Theme.of(context).textTheme.caption,
                  controller: _userNameController,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  decoration: customInputDecoration(
                    text: "Name",
                    prefixIcon: Icons.person,
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
                  controller: _userShortNameController,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  decoration: customInputDecoration(
                      text: "Short Name",
                      prefixIcon: Icons.person,
                      suffixIcon: null,
                      press: () {}),
                ),

                SizedBox(
                  height: 20.h,
                ),
                TextFormField(
                  style: Theme.of(context).textTheme.caption,
                  controller: _userIdController,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  decoration: customInputDecoration(
                      text: "13302-1728416212-1",
                      prefixIcon: Icons.fingerprint,
                      suffixIcon: null,
                      press: () {}),
                ),
                SizedBox(
                  height: 20.h,
                ),
                DropdownButtonFormField(
                  style: Theme.of(context).textTheme.caption,
                  decoration: customInputDecoration(
                    text: "Gender",
                    prefixIcon: Icons.person,
                    suffixIcon: null,
                    press: () {},
                  ),
                  value: _selectedValueGender,
                  isExpanded: true,
                  onChanged: (value) {
                    setState(() {
                      _selectedValueGender = value;
                    });
                  },
                  onSaved: (value) {
                    setState(() {
                      _selectedValueGender = value;
                    });
                  },
                  items: listOfValueOfGender,
                ),
                SizedBox(
                  height: 20.h,
                ),
                TextFormField(
                  style: Theme.of(context).textTheme.caption,
                  controller: _userFathersNameController,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  decoration: customInputDecoration(
                    text: "Father Name",
                    prefixIcon: Icons.person,
                    suffixIcon: null,
                    press: () {},
                  ),
                ),

                SizedBox(
                  height: 20.h,
                ),
                dropDownButtonFormFIeld(
                  context: context,
                  value: _selectedValueFatherOccuption,
                  suffixIcon: null,
                  press: () {},
                  prefixIcon: Icons.sensor_occupied_outlined,
                  items: listOfValueOfFathersOccuption,
                  hintText: "Father Occuption",
                  onChanged: (value) {
                    setState(() {
                      _selectedValueFatherOccuption = value;
                    });
                  },
                  onSaved: (value) {
                    setState(() {
                      _selectedValueFatherOccuption = value;
                    });
                  },
                ),
                SizedBox(
                  height: 20.h,
                ),
                TextFormField(
                  style: Theme.of(context).textTheme.caption,
                  readOnly: true,
                  controller: _userDateOfBirthController,
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
                TextFormField(
                  style: Theme.of(context).textTheme.caption,
                  controller: _userEmailController,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: customInputDecoration(
                    text: "Email",
                    prefixIcon: Icons.email,
                    suffixIcon: null,
                    press: () {},
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                // Custom Text Form field
                CTextFormField(
                  prefixIcon: Icon(Icons.phone),
                  controller: _userContactNumberController,
                  hintText: 'Contact us',
                ),

                SizedBox(
                  height: 20.h,
                ),

                // Custom Text Form field
                CTextFormField(
                  prefixIcon: Icon(Icons.phone),
                  controller: _userOtherContactNumberController,
                  hintText: 'Other contach no ',
                ),

                SizedBox(
                  height: 20.h,
                ),
                CTextFormField(
                  prefixIcon: Icon(Icons.phone),
                  controller: _userGuardianContactNumberController,
                  hintText: 'Guardian contact no ',
                ),

                SizedBox(
                  height: 20.h,
                ),
                CTextFormField(
                  prefixIcon: Icon(Icons.home),
                  controller: _userPostalAddressController,
                  hintText: 'Postal Address ',
                ),

                SizedBox(
                  height: 20.h,
                ),
                CTextFormField(
                  prefixIcon: Icon(Icons.home),
                  controller: _userPermanentAddressController,
                  hintText: 'Permanent Address ',
                ),

                SizedBox(
                  height: 20.h,
                ),
                dropDownButtonFormFIeld(
                  context: context,
                  value: _selectedDomicile,
                  suffixIcon: null,
                  press: () {},
                  prefixIcon: Icons.domain,
                  items: listOfDomicileProvince,
                  hintText: "Domicile Province",
                  onChanged: (value) {
                    setState(() {
                      _selectedDomicile = value;
                    });
                  },
                  onSaved: (value) {
                    setState(() {
                      _selectedDomicile = value;
                    });
                  },
                ),
                SizedBox(
                  height: 20.h,
                ),
                dropDownButtonFormFIeld(
                  context: context,
                  value: _selectedMinority,
                  suffixIcon: null,
                  press: () {},
                  prefixIcon: Icons.star_half,
                  items: listOfMinorities,
                  hintText: "Minorites",
                  onChanged: (value) {
                    setState(() {
                      _selectedMinority = value;
                    });
                  },
                  onSaved: (value) {
                    setState(() {
                      _selectedMinority = value;
                    });
                  },
                ),
                SizedBox(
                  height: 20.h,
                ),
                dropDownButtonFormFIeld(
                  context: context,
                  value: _selectedDisability,
                  suffixIcon: null,
                  press: () {},
                  prefixIcon: Icons.disabled_visible,
                  items: listOfDisability,
                  hintText: "Disability",
                  onChanged: (value) {
                    setState(() {
                      _selectedDisability = value;
                    });
                  },
                  onSaved: (value) {
                    setState(() {
                      _selectedDisability = value;
                    });
                  },
                ),
                SizedBox(
                  height: 20.h,
                ),
                dropDownButtonFormFIeld(
                  context: context,
                  value: _selectedNationality,
                  suffixIcon: null,
                  press: () {},
                  prefixIcon: Icons.disabled_visible,
                  items: listOfNationality,
                  hintText: "Nationality",
                  onChanged: (value) {
                    setState(() {
                      _selectedNationality = value;
                    });
                  },
                  onSaved: (value) {
                    setState(() {
                      _selectedNationality = value;
                    });
                  },
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
                          builder: (context) => QualificationScreen()));
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
                        style: TextStyle(color: Colors.white),
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
