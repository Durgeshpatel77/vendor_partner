
import 'package:flutter/material.dart';

import '../Color/App_Colors.dart';
import '../Custom_Screens/BackGround_Custom.dart';
import '../Custom_Screens/Uploadimage_Custom.dart';
import '../Font/Fonttext.dart';
import '../Home_Pages/Navigation_Pages.dart';

class DocumntsPage extends StatefulWidget {
  const DocumntsPage({super.key});

  @override
  State<DocumntsPage> createState() => _DocumntsPageState();
}

class _DocumntsPageState extends State<DocumntsPage> {

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
                top: height * 0.090,
                left: height * 0.020,
                right: height * 0.020),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: "Upload Documents",
                    fontSize: 35,
                    fontWeight: FontWeight.w600,
                    color: ColorConst.black,
                  ),
                  CustomText(
                    text: "Please upload your valid documents",
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: ColorConst.black,
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Center(
                    child: CustomText(
                      text: "Upload Profile Picture",
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: ColorConst.black,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Center(
                    child: ImagePickerforImage(
                      onImagePicked: (image) {

                        print("Profile Image Picked: ${image?.path}");
                      }, labelText: "",
                    )
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Center(
                    child: CustomText(
                      text: "Upload Aadhaar Card",
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: ColorConst.black,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ImagePickerforImage(
                        onImagePicked: (image) {
                          print("Front Image Picked: ${image?.path}");
                        }, labelText: 'Front Side',
                      ),
                      SizedBox(
                        width: width * 0.09,
                      ),
              ImagePickerforImage(
                onImagePicked: (image) {
                  print("Back Image Picked: ${image?.path}");
                }, labelText: 'Back Side',
              ),
          ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Center(
                    child: CustomText(
                      text: "Upload Pan card",
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: ColorConst.black,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ImagePickerforImage(
                        onImagePicked: (image) {
                          print("Front Image Picked: ${image?.path}");
                        }, labelText: 'Front Side',
                      ),
                      SizedBox(
                        width: width * 0.09,
                      ),
                      ImagePickerforImage(
                        onImagePicked: (image) {
                          print("Back Image Picked: ${image?.path}");
                        }, labelText: 'Back Side',
                      ),
                    ],
                  ),
                  SizedBox(height: height*0.05,),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return NavigationPages();
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
            ),
          ),
        ],
      ),
    );
  }
}
