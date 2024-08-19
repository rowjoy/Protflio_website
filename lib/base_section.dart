// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, avoid_unnecessary_containers

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
      key: scaffoldKey,
      endDrawer: EndDrawerSection(scaffoldKey: scaffoldKey),
      appBar: PreferredSize(
        preferredSize: Size(context.webwidth, context.webHight), 
        child: Container(
          padding: EdgeInsets.only(left: WebSizes.laftSidePadding(context), right: WebSizes.rightSidePadding(context)),
          height: context.webHight / 10,
          color: WebColors.thameColors,
          child: Row(
            mainAxisAlignment: WebSizes.mobileDevice(context) ? MainAxisAlignment.spaceBetween :  MainAxisAlignment.spaceBetween,
            children: [
              WebLogo(),
              WebSizes.mobileDevice(context) ? WebDrawerSection(scaffoldKey: scaffoldKey) : ManuBerSection(),
            ],
          ),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          
            ///[ --------HomeSection view------------ ]
            HomeSection(),

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




