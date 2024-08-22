import 'package:flutter/material.dart';
import 'package:protflio_website/core/web_extention.dart';

class WebSizes {
  

   static bool mobileDevice(BuildContext context) => context.webwidth < 1050.0;
   static bool smallMobileDevice (BuildContext context)=> context.webwidth <= 730.0;
   static double webfontSize (BuildContext context) => context.webwidth / 50;
   static double laftSidePadding (BuildContext context)=> mobileDevice(context) ? context.webwidth / 0 :  context.webwidth / 0;
   static double rightSidePadding (BuildContext context)=> mobileDevice(context) ? context.webwidth / 0  :  context.webwidth / 0;


   static double padding (BuildContext context){
      if (context.webwidth <= 500){
        return 30;
      }else if (context.webwidth <= 900){
        return 40;
      } else {
        return 60;
      }
   }

   static bool deviceResponcive (BuildContext context){
       if (context.webwidth <= 900){
        return true;
      }else if (context.webwidth <= 500){
        return true;
      } else {
        return false;
      }
   }

}

// 500