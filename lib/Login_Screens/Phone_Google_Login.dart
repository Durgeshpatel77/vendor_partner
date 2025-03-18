import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vendor_partner/Color/App_Colors.dart';
import 'package:vendor_partner/Font/Fonttext.dart';
import 'package:vendor_partner/Login_Screens/OTP_login.dart';
import 'package:vendor_partner/Login_Screens/User_Login_details.dart';

import '../Custom_Screens/BackGround_Custom.dart';
import '../Custom_Screens/Image_Custom.dart';

class PhonenumberLogin extends StatefulWidget {
  const PhonenumberLogin({super.key});

  @override
  State<PhonenumberLogin> createState() => _PhonenumberLoginState();
}

class _PhonenumberLoginState extends State<PhonenumberLogin> {
  TextEditingController MobileNumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Stack(
        children: [
          CustomScaffoldForLogin(
            height:double.infinity,
            width: double.infinity,
          ),
          Padding(
            padding: EdgeInsets.only(
                top: height * 0.222,
                left: height * 0.020,
                right: height * 0.020),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: "Login",
                    color: ColorConst.black,
                    fontSize: 48,
                    fontWeight: FontWeight.w600,
                  ),
                  //SizedBox(height: height*0.00,),
                  CustomText(
                    text: "You're just one step away from everything you need",
                    color: ColorConst.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Container(
                    height: 44,
                    child: TextField(
                      controller: MobileNumber,
                       keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(10),
                      ],
                      onTap: () {},
                      cursorColor: ColorConst.black,
                      decoration: InputDecoration(
                          hintText: "Enter phone number",
                          contentPadding: const EdgeInsetsDirectional.symmetric(horizontal: 16),
                          hintStyle: TextStyle(
                              color: ColorConst.shadyLady,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins"),
                          filled: true,
                          fillColor: ColorConst.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide:
                                BorderSide(color: ColorConst.silver, width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide:
                                BorderSide(color: ColorConst.silver, width: 1),
                          ),
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide:
                                  BorderSide(color: ColorConst.silver, width: 1))),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return OtpLogin(mobileNumber:MobileNumber.text.trim());
                        },));
                      },
                      child: Container(
                        height:40,
                        width: width * 0.5,
                        decoration: BoxDecoration(
                            color: ColorConst.black,
                            borderRadius: BorderRadius.circular(23)),
                        child: Center(child: CustomText(text: "Login",color:ColorConst.white,fontWeight:FontWeight.w400,fontSize: 14,)),
                      ),
                    ),
                  ),
                  SizedBox(height: height*0.05,),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return const UserLoginDetails();
                      },));
                    },
                    child: Center(
                      child: Container(
                        height:height*0.035,
                        width: width*0.75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: ColorConst.black1,width:1),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(text:"Continue with Google",color:ColorConst.black1,fontWeight:FontWeight.w400,fontSize: 14,),
                            SizedBox(width: width*0.02,),
                          SvgPicture.asset(
                              ImageConstant.Frame),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
