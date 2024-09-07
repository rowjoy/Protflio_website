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
        // Determine the number of columns based on screen width
          int crossAxisCount = 3;
          if (boxConstraints.maxWidth > 1200) {
            crossAxisCount = 3; // Desktop
          } else if (boxConstraints.maxWidth > 800) {
            crossAxisCount = 2; // Tablet
          } else {
            crossAxisCount = 1; // Mobile
          }
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
             SizedBox(height: 30),
             GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                childAspectRatio: 4 / 3, 
              ),
              itemCount: 12, // Replace with your item count
              itemBuilder: (context, index) {
                return Card(
                  elevation: 5,
                  color: WebColors.colorsWhite,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                          ),
                          child: Image.asset("assets/demo_images.png")
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               Text("Portfolio Website Design",
                                  style: TextStyleTheme.smallText2(),
                               ),
                               Text("Lorem ipsum dolor sit amet consectetur.",
                                  style: TextStyleTheme.smallText3(),
                               ),
                               SizedBox(height: 10,),
                               Row(
                                 children: [
                                    InkWell(
                                      onTap: (){},
                                      child: Text("Android live",style: TextStyleTheme.viewButton(),)
                                    ),
                                    SizedBox(width: 15,),
                                    InkWell(
                                      onTap: (){},
                                      child: Text("Ios live",style: TextStyleTheme.viewButton())
                                    ),
                                    SizedBox(width: 15,),
                                    InkWell(
                                      onTap: () {
                                        
                                      },
                                      child: Text("GitHub",style: TextStyleTheme.viewButton())
                                    ),

                                 ],
                               ),
                            ],
                          ),
                        ),
                    ],
                  ),
                );
              },
            ),
          ],
        );
      }
    );
  }
}