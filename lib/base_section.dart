// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:protflio_website/core/web_colors.dart';
import 'package:protflio_website/core/web_extention.dart';
import 'package:protflio_website/core/web_sizes.dart';
import 'package:protflio_website/section/about_me_section.dart';
import 'package:protflio_website/section/home_section.dart';
import 'package:protflio_website/section/project_section.dart';
import 'package:protflio_website/style_section/menuber_section.dart';
import 'package:protflio_website/style_section/web_logo.dart';

import 'section/skill_section.dart';
import 'style_section/web_drawer_section.dart';

class BaseSection extends StatelessWidget {
   BaseSection({super.key});

  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      extendBody: true,
      backgroundColor: WebColors.thameColors,
      key: scaffoldKey,
      endDrawer: EndDrawerSection(scaffoldKey: scaffoldKey),
      appBar: PreferredSize(
        preferredSize: Size(context.webwidth, context.webHight), 
        child: Padding(
          padding: EdgeInsets.only(left: WebSizes.padding(context), right: WebSizes.padding(context)),
          child: Container(
            height: context.webHight / 10,
            child: Animate(
              effects: [FadeEffect(), ScaleEffect()],
              child: Row(
                mainAxisAlignment: WebSizes.mobileDevice(context) ? MainAxisAlignment.spaceBetween :  MainAxisAlignment.spaceBetween,
                children: [
                  WebLogo(),
                  WebSizes.mobileDevice(context) ? WebDrawerSection(scaffoldKey: scaffoldKey) : ManuBerSection(pageController: pageController,),
                ],
              ),
            ),
          ),
        ),
      ),
      body: PageView(
        controller: pageController,
        physics: BouncingScrollPhysics(),
        onPageChanged: (index){
          // ignore: avoid_print
          print("Current page ${index}");
        },
        scrollDirection: Axis.vertical,
        children: [
            ///[ --------HomeSection view------------ ]
            Padding(
              padding: EdgeInsets.only(left: WebSizes.padding(context), right: WebSizes.padding(context)),
              child: Container(
                height: context.webHight,
                child: Animate(
                  effects: [FadeEffect(), ScaleEffect()],
                  child: HomeSection()
                ),
              ),
            ),
            ///[-------- About me -------------]
            Container(
              //height: context.webHight * 0.7,
              // width: context.webwidth,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage("assets/about-animi.gif"),
                  fit: BoxFit.cover,
                  opacity: 0.1,
                  isAntiAlias: true,
                  colorFilter: ColorFilter.mode(Colors.white, BlendMode.exclusion),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: WebSizes.padding(context), right: WebSizes.padding(context)),
                child: AboutMeSection(),
              ),
            ),
            ///[------------Skill Section--------------]
            Container(
              child: Padding(
                padding: EdgeInsets.only(left: WebSizes.padding(context), right: WebSizes.padding(context)),
                child: SkillSection(),
              ),
            ),
            Container(
              height: 500,
              color: WebColors.colorsWhite,
              child: Padding(
                padding:  EdgeInsets.only(left: WebSizes.padding(context), right: WebSizes.padding(context)),
                child: ProjectSection(),
              ),
             // color: Colors.blue,
            ),
            Container(
              height: 500,
              color: Colors.amber,
            ),
        ],
      ),
      
    );
  }
}




