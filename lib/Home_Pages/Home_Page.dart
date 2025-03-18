import 'package:flutter/material.dart';
import 'package:vendor_partner/Color/App_Colors.dart';
import 'package:vendor_partner/Font/Fonttext.dart';
import 'package:vendor_partner/Home_Pages/Order_detail_Page.dart';

import '../Custom_Screens/BackGround_Custom.dart';
import '../Custom_Screens/Custom_Container_order.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            CustomGradientContaienrtwo(
              width: width * width,
              height: height * height,
            ),
            Container(
              height: height * height,
              width: width*width,
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
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: width*0.04,top: height*0.05),
                      child: Container(
                        child: CustomText(text: "Live orders",fontSize: 24,fontWeight: FontWeight.w700,color: ColorConst.black,),
                      ),
                    ),
                    SizedBox(
                      height: height*0.03,
                    ),
                    ListView.builder(
                      itemCount: 7,
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      scrollDirection:Axis.vertical,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return OrderDetailPage();
                            },));
                          },
                          child: CustomContainerOrder(
                            OrderID:"232DH3",
                            OrederDate: "19-Nov-2024",
                            BuyerName: "Delivery to Atul Doss",
                            ItemName: "ACC 53 OPC Grade cement, Tata Tiscon TMT steel, Grade......",
                            DeliveryDate: "23 Nov 2024",
                            Location: "Marathahalli",
                            TotalAmount: "1,00,000₹",
                          ),
                        );
                    },),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
