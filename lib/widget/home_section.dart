// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, non_constant_identifier_names, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protflio_website/core/images_path.dart';
import 'package:protflio_website/core/web_colors.dart';
import 'package:protflio_website/core/web_extention.dart';
import 'package:protflio_website/core/web_sizes.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print("${context.webwidth}");
    return Container(
     //height: context.webHight / 1.3,
      child: !WebSizes.mobileDevice(context) ?  Row (
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
           HomeLeftSection(),

           Hero(
            tag: "profile",
            child: ProfileImageUser()
           ),
         ],
        ) : Column(
         children: [
            Hero(
              tag: "profile",
              child: ProfileImageUser()
            ),
            HomeLeftSection(),
            
         ],
      ),
    );
  }
}

class ProfileImageUser extends StatelessWidget {
  const ProfileImageUser({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
         // LottieBuilder.asset(AnimationPath.meBackGroundAnimation),
         Container(
           width: 230,
           height: 230,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(10),
             color: WebColors.secendryColors,
           ),
         ),
    
         Transform.translate(
           offset: Offset(-84, -70),
           child: Image.asset(ImagePath.useMe,   width: 400 , height: 300),
         )
      ],
    );
  }
}

class HomeLeftSection extends StatelessWidget {
  const HomeLeftSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           AutoSizeText("Hi Everyone, I am",
            style: GoogleFonts.sora(
              textStyle: TextStyle(
                 fontSize: 20,
                 color: WebColors.secendryColors,
                // color: WebColors.backColors,
              ),
            ),
           ),
           SizedBox(height: 10),
           AutoSizeText("Jamirul Islam Joy",
             style: GoogleFonts.sora(
               textStyle:TextStyle(
                 color: WebColors.backColors,
                 fontSize: 40,
               ),
             )
           ),
          SizedBox(height: 10),
           Container(
             width: context.webwidth / 2,
             child: AutoSizeText("Hello I've successfully developed and maintained Flutter applications that prioritize user experience and performance. I'm confident in my ability to write clean code, design intuitive interfaces, and collaborate effectively with cross-functional teams.",
               textAlign: TextAlign.start,
               style: GoogleFonts.sora (
                  textStyle : TextStyle(
                    color: WebColors.backColors,
                    fontSize: 17
                  )
               ),
             ),
           ),
           SizedBox(height: 30,),
           Row(
              children: [
               Material(
                 elevation: 5,
                 shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                 ),
                 child: Container(
                   width: context.webwidth / 6,
                   height: 45,
                   decoration: BoxDecoration(
                     color: WebColors.secendryColors,
                     borderRadius: BorderRadius.circular(4.0)
                   ),
                   child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Download CV",
                          style: GoogleFonts.sora(
                            textStyle: TextStyle(
                              color: WebColors.colorsWhite,
                            )
                          ),
                        ),
                        Icon(Icons.download_rounded,color: WebColors.colorsWhite,)
                      ],
                   ),
                 ),
               ),
               SizedBox(width: 8),
               Container(
                 width: context.webwidth / 6, //Explore More
                 height: 45,
                 decoration: BoxDecoration(
                     border: Border.all(width: 1,color:  WebColors.secendryColors),
                     borderRadius: BorderRadius.circular(4.0)
                 ),
                 child: Center(
                   child: Text("Explore More",
                       style: GoogleFonts.sora(
                         textStyle: TextStyle(
                           color: WebColors.smallFontColors,
                         )
                       ),
                     ),
                 ),
                ),
              ],
           ),
        ],
      ),
    );
  }
}
