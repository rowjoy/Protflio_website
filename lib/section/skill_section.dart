import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:protflio_website/core/web_extention.dart';

import '../core/theme.dart';

class SkillSection extends StatelessWidget {
  SkillSection({super.key});
  final List<String> imageName = ["flutter-svgrepo-com.png", "dart-svgrepo-com.png", "swift-svgrepo-com.png", "kotlin-svgrepo-com.png", "firebase-svgrepo-com.png", "github-svgrepo-com.png", "gitlab-svgrepo-com.png"];
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, b){
        final size = context.webwidth;
        // ignore: avoid_unnecessary_containers
        return Container(
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             //mainAxisAlignment: MainAxisAlignment.center,
             children: [
                AutoSizeText("Skills",
                  style: TextStyleTheme.smallText(),
                 ),
                Text("What I am capable of ?",
                  style: TextStyleTheme.largeText(),
                ),
                Container(
                  height: 120,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: imageName.length,
                    itemBuilder: (BuildContext context, index){
                      return Container(
                        width: 70,
                        height: 70,
                        child: Image.asset("assets/skill/${imageName[index]}")
                       );
                    }
                  ),
                )
                // Expanded(
                //   child: GridView.extent(
                //     shrinkWrap: true,
                //     scrollDirection: Axis.vertical,
                //     clipBehavior: Clip.antiAlias,
                //     maxCrossAxisExtent: 100,
                //     crossAxisSpacing: 20.0,
                //     mainAxisSpacing: 20.0,
                //       children: imageName.map((el) => Row(
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         children: [
                //           Image.asset("assets/skill/$el"),
                //         ],
                //       )
                //      ).toList(),
                //   ),
                // ),
             ],
           ),
        );

      }
    );
  }
}

// Flutter 
// Dart 
// Ios 
// Android 
// Swift UI
// JetPack compase 
// Sqflite
// Firebase 
// GitHub
// Gitlab
// VsCode 
// Xcode 
// Google play Store developer console 
// App Store connect developer 
// AppGallery (Huawei) developer 
// Noification 
// Payment getwaya 
// 