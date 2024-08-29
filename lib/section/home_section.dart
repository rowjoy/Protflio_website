// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, non_constant_identifier_names, sized_box_for_whitespace, avoid_unnecessary_containers, avoid_print

import 'package:flutter/material.dart';
import 'package:protflio_website/core/web_sizes.dart';

import '../style_section/home_component.dart';

class HomeSection extends StatefulWidget {
  const HomeSection({
    super.key,
  });

  @override
  State<HomeSection> createState() => _HomeSectionState();
}

class _HomeSectionState extends State<HomeSection> {
  double opacityvalue = 0.0;
  bool isselect = false;

  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 300),(){
      setState(() {
        opacityvalue = 1.0;
        isselect = true;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print(opacityvalue);
    return Container(
      child: !WebSizes.mobileDevice(context) ?  Row (
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
           HomeLeftSection(ismallTobig: isselect,),
           Hero(
              tag: "profile",
              child: ProfileImageUser(opacity: opacityvalue)
            ),
          ],
        ) : Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: "profile",
                child: ProfileImageUser(opacity: opacityvalue,)
              ),
              HomeLeftSection(ismallTobig: isselect,),
           ],
          ),
        ),
    );
  }
}
