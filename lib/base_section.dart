// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:protflio_website/core/web_colors.dart';
import 'package:protflio_website/core/web_extention.dart';
import 'package:protflio_website/core/web_sizes.dart';
import 'package:protflio_website/widget/home_section.dart';
import 'package:protflio_website/widget/menuber_section.dart';
import 'package:protflio_website/widget/web_logo.dart';

import 'widget/web_drawer_section.dart';

class BaseSection extends StatelessWidget {
  const BaseSection({super.key});

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
            child: Row(
              mainAxisAlignment: WebSizes.mobileDevice(context) ? MainAxisAlignment.spaceBetween :  MainAxisAlignment.spaceBetween,
              children: [
                WebLogo(),
                WebSizes.mobileDevice(context) ? WebDrawerSection(scaffoldKey: scaffoldKey) : ManuBerSection(),
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          
            ///[ --------HomeSection view------------ ]
            Padding(
              padding: EdgeInsets.only(left: WebSizes.padding(context), right: WebSizes.padding(context)),
              child: HomeSection(),
            ),
      
            Container(
              height: 500,
              color: Colors.black12,
            ),
            Container(
              height: 500,
              color: Colors.green,
            ),
            Container(
              height: 500,
              color: Colors.blue,
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




