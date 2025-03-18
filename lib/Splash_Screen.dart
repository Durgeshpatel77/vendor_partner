import 'dart:async';

import 'package:flutter/material.dart';

import 'Color/App_Colors.dart';
import 'Custom_Screens/BackGround_Custom.dart';
import 'Font/Fonttext.dart';
import 'Login_Screens/Phone_Google_Login.dart';

class SplachScreen extends StatefulWidget {
  const SplachScreen({super.key});

  @override
  State<SplachScreen> createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => PhonenumberLogin()));
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Stack(
        children: [
          CustomScaffoldForLogin(
            width: double.infinity,
            height: double.infinity,
          ),
          Padding(
            padding: EdgeInsets.only(top: height * 0.547, left: height * 0.020),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: "One Stop",
                  fontWeight: FontWeight.w700,
                  color: ColorConst.black,
                  fontSize: 48,
                ),
                CustomText(
                  text: "for your all construction needs",
                  fontWeight: FontWeight.w600,
                  color: ColorConst.black,
                  fontSize: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
