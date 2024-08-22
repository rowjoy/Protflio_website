// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, non_constant_identifier_names, sized_box_for_whitespace, avoid_unnecessary_containers, avoid_print

import 'package:flutter/material.dart';
import 'package:protflio_website/core/web_sizes.dart';

import '../style_section/home_component.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
        ) : Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: "profile",
                child: ProfileImageUser()
              ),
              HomeLeftSection(),
           ],
          ),
        ),
    );
  }
}
