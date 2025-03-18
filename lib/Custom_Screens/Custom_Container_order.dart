import 'package:flutter/material.dart';
import 'package:vendor_partner/Color/App_Colors.dart';
import 'package:vendor_partner/Font/Fonttext.dart';

import 'Image_Custom.dart';

class CustomContainerOrder extends StatefulWidget {
  final String OrderID;
  final String OrederDate;
  final String ItemName;
  final String BuyerName;
  final String DeliveryDate;
  final String Location;
  final String TotalAmount;
  const CustomContainerOrder({
    Key? key,
    required this.OrderID,
    required this.OrederDate,
    required this.ItemName,
    required this.BuyerName,
    required this.DeliveryDate,
    required this.Location,
    required this.TotalAmount,
  }) : super(key: key);

  @override
  State<CustomContainerOrder> createState() => _CustomContainerOrderState();
}

class _CustomContainerOrderState extends State<CustomContainerOrder> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Container(
      margin:  EdgeInsets.only(left: width * 0.04, right: width * 0.04,bottom: height*0.02),
      padding: EdgeInsets.only(
        top: height * 0.01,
        bottom: height * 0.01,
        left: width*0.01,
        right: width*0.02,
      ),
      width: double.infinity,
      // height: height * 0.25,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: ColorConst.gainsboro.withOpacity(0.7),
          border: Border.all(color: ColorConst.silver, width: 1)),
      child: Row(
        children: [
          Container(
            height: height * 0.17,
           // color: Colors.green,
            child: Stack(
              children: [
                Center(
                  child: Container(
                      height: height * 0.12,
                      width: width * 0.24,
                     // color: Colors.red,
                      child: Image.asset(
                        ImageConstant.ACC,
                        fit: BoxFit.fill,
                      )),
                ),
                Positioned(
                  top: height*0.11,
                  left: width*0.09,
                  child: CircleAvatar(
                    radius: height * 0.022,
                    backgroundColor: ColorConst.black,
                    child: CustomText(
                      text: "2",
                      color: ColorConst.white,
                      fontSize: height*0.014,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: width * 0.02,
          ),
          Container(
           // height: height * 0.22,
            width: width * 0.58,
           // color: Colors.yellow,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "Order:${widget.OrderID}",
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: ColorConst.black,
                    ),
                    CustomText(
                      text: widget.OrederDate,
                      color: ColorConst.dimGray,
                      fontSize:12,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                )),
                SizedBox(height:16,),
                CustomText(text: widget.ItemName,color: ColorConst.dimGray,fontWeight: FontWeight.w400,fontSize:14,),
                SizedBox(height:8.5 ,),
                CustomText(text: widget.BuyerName,color: ColorConst.black,fontWeight: FontWeight.w700,fontSize:14,),
                SizedBox(height: 8,),
                CustomText(
                  text: "Expected delivery date:${widget.DeliveryDate}",
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: ColorConst.green,
                ),
            SizedBox(height: 8,),
                Row(
                  children: [
                    CustomText(
                      text: "Delivery location:",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: ColorConst.black,
                    ),
                    CustomText(
                      text: "${widget.Location}",
                      fontSize: height*0.014,
                      fontWeight: FontWeight.w700,
                      color: ColorConst.black,
                    ),
                  ],
                ),
                SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "Total order amount",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: ColorConst.black,
                    ),
                    CustomText(
                      text: "${widget.TotalAmount}",
                      fontSize:16,
                      fontWeight: FontWeight.w800,
                      color: ColorConst.black,
                    ),

                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
