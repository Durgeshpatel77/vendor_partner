import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:vendor_partner/Color/App_Colors.dart';
import 'package:vendor_partner/Font/Fonttext.dart';

import '../Custom_Screens/BackGround_Custom.dart';

class OtpLogin extends StatefulWidget {
  final String mobileNumber;

  const OtpLogin({super.key, required this.mobileNumber});

  @override
  State<OtpLogin> createState() => _OtpLoginState();
}

class _OtpLoginState extends State<OtpLogin> {
  final TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;

    final defaultPinTheme = PinTheme(
      width: 45,
      height: 61,
      textStyle:  TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: ColorConst.darkGray,
      ),
      decoration: BoxDecoration(
        color: ColorConst.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: ColorConst.darkGray,width: 1),
      ),
    );

    return Scaffold(
      body: Stack(
        children: [
          CustomScaffoldForLogin(
            height: height * 1,
            width: width * 1,
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
                    text: "OTP",
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                    color: ColorConst.black,
                  ),
                  Row(
                    children: [
                      CustomText(
                        text: "Code is sent to ",
                        fontSize: 16,
                        color: ColorConst.black,
                        fontWeight: FontWeight.w600,
                      ),
                      CustomText(
                        text: "+91 ${widget.mobileNumber}",
                        fontSize: 16,
                        color: ColorConst.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                   SizedBox(height: height*0.04),

                  // Pinput for OTP
                  Center(
                    child: Pinput(
                      controller: otpController,
                      length: 6,
                      defaultPinTheme: defaultPinTheme,
                      focusedPinTheme: defaultPinTheme.copyWith(
                        decoration: BoxDecoration(
                          color: ColorConst.white,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: ColorConst.darkGray),
                        ),
                      ),
                      submittedPinTheme: defaultPinTheme.copyWith(
                        decoration: BoxDecoration(
                          color: ColorConst.white,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: ColorConst.darkGray),
                        ),
                      ),
                    ),
                  ),
                   SizedBox(height: height*0.12),

                  Padding(
                    padding:  EdgeInsets.only(left: 25,right: 25),
                    child: Center(
                      child: Container(
                        height: 40,
                        width: width * 1,
                        decoration: BoxDecoration(
                          color: ColorConst.black,
                          borderRadius: BorderRadius.circular(32),
                        ),
                        child: Center(
                          child: CustomText(
                            text: "Verify and Create Account",
                            color: ColorConst.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height:height *0.01,),
                  Center(child: CustomText(text: "Didn’t receive code?",color: ColorConst.dimGray,fontWeight:FontWeight.w600,fontSize: 12,)),
                  SizedBox(height:height *0.01,),
                  Center(child: CustomText(text: "Request again",color: ColorConst.black,fontWeight:FontWeight.w700,fontSize: 12,))

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
