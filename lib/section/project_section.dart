import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

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
             SizedBox(height: 30),
             Material(
               elevation: 6,
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(15),
               ),
               child: Container(
                 height: 350,
                 width: 430,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(15),
                 ),
                child: Column(
                   children: [
                     ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                      child: Image.asset("assets/demo_images.png", scale: 3,)
                    ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Portfolio Website Design"),
                        Text("Lorem ipsum dolor sit amet consectetur."),
                        Row(
                          children: [
                            TextButton(
                              onPressed: (){}, 
                              child: Text("Android")
                            ),
                            TextButton(
                              onPressed: (){}, 
                              child: Text("IOS")
                            ),
                              TextButton(
                              onPressed: (){}, 
                              child: Text("Github"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    
                   ],
                ),
               ),
             ),
          ],
        );
      }
    );
  }
}