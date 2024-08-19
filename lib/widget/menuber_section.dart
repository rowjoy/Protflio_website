// ignore_for_file: avoid_print, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protflio_website/core/web_sizes.dart';

import '../core/local_data.dart';

class ManuBerSection extends StatefulWidget {
  const ManuBerSection({
    super.key,
  });

  @override
  State<ManuBerSection> createState() => _ManuBerSectionState();
}

class _ManuBerSectionState extends State<ManuBerSection> {
  bool ishover = false;
  String isSelected = WebManuBerItem.webManuBerItemList.first;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context , index){
          return InkWell(
            onTap: () {
              print(WebManuBerItem.webManuBerItemList[index]);
              setState(() {
                 isSelected = WebManuBerItem.webManuBerItemList[index];
              });
            },
            onHover: (value) {
              setState(() {
                 ishover = value;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Text( WebManuBerItem.webManuBerItemList[index],
                       style: GoogleFonts.sora(
                          textStyle :  TextStyle(
                             color:  isSelected ==  WebManuBerItem.webManuBerItemList[index] ? Colors.black :  Colors.grey,
                             fontSize:  WebSizes.webfontSize(context) / 1.6,
                             fontWeight: isSelected ==  WebManuBerItem.webManuBerItemList[index] ? FontWeight.bold : FontWeight.normal,
                          ),
                       ),
                     ),
                   
                ],
              ),
            ),
          );
        }
      );
  }
}