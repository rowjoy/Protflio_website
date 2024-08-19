import 'package:flutter/material.dart';
import 'package:protflio_website/core/web_extention.dart';

class WebSizes {
   static double laftSidePadding (BuildContext context)=> context.webwidth / 11;
   static double rightSidePadding (BuildContext context)=> context.webwidth / 11;

   static bool mobileDevice(BuildContext context) => context.webwidth < 900.0;

   static double webfontSize (BuildContext context) => context.webwidth / 50;

}