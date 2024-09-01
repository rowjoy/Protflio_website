import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

import '../core/local_data.dart';
import '../core/theme.dart';

class SkillSection extends StatelessWidget {
  SkillSection({super.key});
  final List<String> imageName = ["flutter-svgrepo-com.png", "dart-svgrepo-com.png", "swift-svgrepo-com.png", "kotlin-svgrepo-com.png", "firebase-svgrepo-com.png", "github-svgrepo-com.png", "gitlab-svgrepo-com.png"];
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, b){
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
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
                     width: 100,
                     height: 100,
                     child: Padding(
                       padding: const EdgeInsets.all(15.0),
                       child: Image.asset("assets/skill/${imageName[index]}"),
                     )
                    );
                 }
               ),
             ),

             SyntaxView(
                code: WebManuBerItem.mySkill,	// Code text
                syntax: Syntax.DART,	// Language
                syntaxTheme: SyntaxTheme.gravityDark(),	// Theme
                fontSize: 14.0,	// Font size
                withZoom: false,	// Enable/Disable zoom icon controls
                withLinesCount: false,	// Enable/Disable line number
                expanded: false,	// Enable/Disable container expansion
                selectable: true // Enable/Disable code text selection
              ),
          ],
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