// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_print

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:protflio_website/core/theme.dart';
import 'package:protflio_website/core/web_extention.dart';
import 'package:protflio_website/core/web_sizes.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
         print("Print ${context.webwidth}");
         final cwidth = context.webwidth;
         final chight = context.webHight;
         return Container(
           child: !WebSizes.mobileDevice(context) ? Row(
             children: [
                AboutMeImage(cwidth: cwidth * 0.3, chight: chight * 0.6),
                InformationText(cwidth: cwidth, chight: chight),
             ],
           ) : Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
                 AboutMeImage(cwidth: cwidth * 0.3, chight: chight * 0.6),
                 InformationText(cwidth: cwidth, chight: chight),
                 SizedBox(height: chight * 0.1,),
             ],
           ),
         );
      }
    );
  }
}

class InformationText extends StatelessWidget {
  const InformationText({
    super.key,
    required this.cwidth,
    required this.chight,
  });

  final double cwidth;
  final double chight;

  @override
  Widget build(BuildContext context) {
    return Container(
       width: WebSizes.mobileDevice(context) ?  cwidth : cwidth * 0.6,
       //height: chight,
       //color: Colors.amber,
       child: Column(
          crossAxisAlignment: WebSizes.mobileDevice(context) ?  CrossAxisAlignment.center : CrossAxisAlignment.start ,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              AutoSizeText(
                "About",
                style: TextStyleTheme.smallText(),
              ),
              AutoSizeText(
                "About Me?",
                style: TextStyleTheme.largeText(),
              ),
              AutoSizeText(
                "I'm confident in my ability to write clean code, design intuitive interfaces, and collaborate effectively with cross-functional teams. I have worked on a wide range of projects, from small-scale apps to complex, enterprise-level solutions.",
                style:  TextStyleTheme.bodyText(),
              ),
              AutoSizeText(
                "My deep understanding of Flutter’s architecture, along with proficiency in state management solutions like GetX, Riverpod, and Provider, enables me to craft scalable and maintainable applications.",
                style:  TextStyleTheme.bodyText(),
              ),
              SizedBox(height: 10),
              AutoSizeText(
                "My role often involves leading development teams, mentoring junior developers, and making key architectural decisions to drive projects to success.",
                style:  TextStyleTheme.bodyText(),
              ),
          ],
       ),
    );
  }
}

class AboutMeImage extends StatelessWidget {
  const AboutMeImage({
    super.key,
    required this.cwidth,
    required this.chight,
  });

  final double cwidth;
  final double chight;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      width:  WebSizes.mobileDevice(context) ?  cwidth * 0.9 : cwidth,
      height: WebSizes.mobileDevice(context) ? chight * 0.5 : chight,
      // decoration: BoxDecoration(
      //    border: Border.all(width: 1, color: WebColors.thameColors),
      // ),
      child: SvgPicture.asset("about_me.svg",fit: BoxFit.contain,),
    );
  }
}