import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:protflio_website/core/theme.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (a,size){
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 AutoSizeText(
                   "Contacts",
                   style: TextStyleTheme.smallText(),
                 ),
                 AutoSizeText(
                   "Get in touch",
                    style: TextStyleTheme.largeText(),
                 ),
                 AutoSizeText(
                   "swe.jamirulinfo@gmail.com",
                   style: TextStyleTheme.bodyText(),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(top: 8, bottom: 8),
                   child: Row(
                     children: [
                       InkWell(
                         onTap: (){},
                         child: Image.asset("assets/linkedIn.png"),
                       ),
                       SizedBox(width: 30,),
                       InkWell(
                         onTap: (){},
                         child: Image.asset("assets/gitHub.png"),
                       ),
                        
                     ],
                   ),
                 ),
              ],
            ),

            AutoSizeText("Copyright © 2024. Develop & Designed by Jamirul islam",style: TextStyleTheme.bodyText(),),
        
          ],
        );
      }
    );
  }
}