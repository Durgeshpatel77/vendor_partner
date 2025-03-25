import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vendor_partner/Color/App_Colors.dart';
import '../Custom_Screens/BackGround_Custom.dart';
import '../Custom_Screens/Image_Custom.dart';
import '../Custom_Screens/design_color_coustom_Container.dart';
import '../Font/Fonttext.dart';

class OrderDetailPage extends StatefulWidget {
  const OrderDetailPage({super.key});

  @override
  State<OrderDetailPage> createState() => _OrderDetailPageState();
}

class _OrderDetailPageState extends State<OrderDetailPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          CustomGradientContaienrtwo(
            width: width * width,
            height: height * height,
          ),
          Container(
            height: height * height,
            width: width * width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white.withOpacity(1),
                  Colors.white.withOpacity(1),
                  Colors.white.withOpacity(1),
                  Colors.white.withOpacity(0),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          SingleChildScrollView(
            padding: EdgeInsets.only(
                left: width * 0.04, top: height * 0.04, right: width * 0.04),
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      SizedBox(
                        child: SvgPicture.asset(
                          ImageConstant.Back,
                          fit: BoxFit.fill,
                        ),
                      ),
                      const SizedBox(width: 9),
                      CustomText(
                        text: "Order details",
                        color: ColorConst.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                DesignColorCoustomContainer(
                  child: Padding(
                    padding:  EdgeInsets.only(left: 16,right: 16,top: 10,bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              CustomText(
                                text: "Order date",
                                color: ColorConst.dimGray,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                              SizedBox(height: 6,),
                              CustomText(
                                text: "Order code",
                                color: ColorConst.dimGray,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                              SizedBox(height: 6,),
                              CustomText(
                                text: "Order total",
                                color: ColorConst.dimGray,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                        ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                    text: "19-Nov-2024",
                                    color: ColorConst.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  SizedBox(height: 5,),
                                  CustomText(
                                    text: "232DH3",
                                    color: ColorConst.easternBlue,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  SizedBox(height: 5,),
                                  CustomText(
                                    text: "₹100,000 (2 Items)",
                                    color: ColorConst.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),


                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
