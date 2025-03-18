import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vendor_partner/Color/App_Colors.dart';
import 'package:vendor_partner/Font/Fonttext.dart';
import 'package:vendor_partner/Login_Screens/Documnts_Page.dart';

import '../Custom_Screens/BackGround_Custom.dart';
import '../Custom_Screens/TextField_Custom.dart';

class UserLoginDetails extends StatefulWidget {
  const UserLoginDetails({super.key});

  @override
  State<UserLoginDetails> createState() => _UserLoginDetailsState();
}

class _UserLoginDetailsState extends State<UserLoginDetails> {
  TextEditingController Name = TextEditingController();
  TextEditingController Phonenumber = TextEditingController();
  TextEditingController Email = TextEditingController();
  TextEditingController Address = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Stack(
        children: [
          CustomScaffoldForLogin(
            height: height * 1,
            width: width * 1,
          ),
          Padding(
              padding: EdgeInsets.only(
                  top: height * 0.120,
                  left: height * 0.020,
                  right: height * 0.020),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: "Welcome",
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                      color: ColorConst.black,
                    ),
                    CustomText(
                      text:
                          "You're just one step away from everything you need",
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: ColorConst.black,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: height * 0.0256, left: width * 0.02),
                      child: CustomText(
                        text: "Name",
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: ColorConst.black,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    TextfieldCustom(
                      controller: Name,
                      hintText: "Enter your name",
                      borderRadius: 16,
                      keyboardType: TextInputType.number,
                      borderColor: ColorConst.silver,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 7, horizontal: 20),
                    ),
                    SizedBox(
                      height: height*0.01,
                    ),
                    CustomText(
                      text: "Phone number",
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: ColorConst.black,
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    TextfieldCustom(
                      controller: Phonenumber,
                      hintText: "Enter your number",
                      borderRadius: 16,
                      keyboardType: TextInputType.text,
                      borderColor: ColorConst.silver,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 7, horizontal: 20),
                    ),   SizedBox(
                      height: height*0.01,
                    ),
                    CustomText(
                      text: "Email",
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: ColorConst.black,
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    TextfieldCustom(
                      controller: Email,
                      hintText: "Enter your email",
                      borderRadius: 16,
                      keyboardType: TextInputType.emailAddress,
                      borderColor: ColorConst.silver,
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 7, horizontal: 20),
                    ),
                    SizedBox(
                      height: height*0.01,
                    ),
                    CustomText(
                      text: "Address",
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: ColorConst.black,
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    TextfieldCustom(
                      controller: Address,
                      hintText: "Enter your address",
                      borderRadius: 16,
                      keyboardType: TextInputType.text,
                      borderColor: ColorConst.silver,
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                    ),
                    SizedBox(height: height*0.1,),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return DocumntsPage();
                        },));
                      },
                      child: Center(
                        child: Container(
                          height:40,
                          width: width * 0.4,
                          decoration: BoxDecoration(
                              color: ColorConst.black,
                              borderRadius: BorderRadius.circular(23)),
                          child: Center(child: CustomText(text: "Next",color:ColorConst.white,fontWeight:FontWeight.w400,fontSize: 14,)),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
