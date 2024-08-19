
// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protflio_website/core/local_data.dart';
import 'package:protflio_website/core/web_colors.dart';
import 'package:protflio_website/core/web_extention.dart';
import 'package:protflio_website/core/web_sizes.dart';

class EndDrawerSection extends StatelessWidget {
  GlobalKey<ScaffoldState> scaffoldKey;
   EndDrawerSection({
    super.key,
    required this.scaffoldKey,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.webwidth / 2,
      // height: context.webHight / 1.5,
      color: WebColors.thameColors,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView.builder(
           shrinkWrap: true,
           physics: NeverScrollableScrollPhysics(),
           scrollDirection: Axis.vertical,
           itemCount: 5,
           itemBuilder: (BuildContext context , index){
            return InkWell(
              onTap: (){
                scaffoldKey.currentState!.closeEndDrawer();
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("${WebManuBerItem.webManuBerItemList[index]}",
                  style: GoogleFonts.sora(
                    textStyle: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            );
          }
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class WebDrawerSection extends StatelessWidget {
  GlobalKey<ScaffoldState> scaffoldKey;

   WebDrawerSection({
    super.key,
    required this.scaffoldKey,
  });

  @override
  Widget build(BuildContext context) {
    return  IconButton(
      onPressed: (){
        scaffoldKey.currentState!.openEndDrawer();
      },
      icon: Icon(Icons.menu, size: WebSizes.webfontSize(context) + 10.0,)
    );
  }
}
