import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:protflio_website/core/web_colors.dart';

import '../core/theme.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints boxConstraints){
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              AutoSizeText("Projects",
               style: TextStyleTheme.smallText(),
              ),
             Text("What I have made?",
               style: TextStyleTheme.largeText(),
             ),
            
             Container(
               height: 300,
               width: 450,
               color: WebColors.thameColors,
             ),
          ],
        );
      }
    );
  }
}