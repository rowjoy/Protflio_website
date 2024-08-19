// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:protflio_website/core/web_colors.dart';
import 'package:protflio_website/core/web_extention.dart';
import 'package:protflio_website/core/web_sizes.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.webHight / 1.3,
      width: context.webwidth,
      color: WebColors.thameColors,
      child: Padding(
        padding:  EdgeInsets.all(WebSizes.laftSidePadding(context)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Container(
               width: context.webwidth / 3 - 10,
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                    Text("Hi Everyone, I am"),
                    Text("Jamirul islam joy"),
                    Text("Hello I've successfully developed and maintained Flutter applications that prioritize user experience and performance. I'm confident in my ability to write clean code, design intuitive interfaces, and collaborate effectively with cross-functional teams.",
                      textAlign: TextAlign.justify,
                    ),
                 ],
               ),
             ),

             Stack(
               children: [
                 CustomPaint(
                  size: Size(context.webwidth / 4.5, context.webHight ), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                  painter: RPSCustomPainter(),
                ),

                Transform.translate(
                  offset: Offset(40, 0),
                  child:  CircleAvatar(
                     radius:  context.webHight / 7,
                   ),
                 ),
               ],
             ),
          ],
        ),
      ),
    );
  }
}



class RPSCustomPainter extends CustomPainter{
  
  @override
  void paint(Canvas canvas, Size size) {
    
    

  // Layer 1
  
  Paint paint_fill_0 = Paint()
      ..color = const Color.fromARGB(255, 69, 123, 157)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;
     
         
    Path path_0 = Path();
    path_0.moveTo(size.width,size.height);
    path_0.quadraticBezierTo(size.width,size.height,size.width,size.height);
    path_0.cubicTo(size.width,size.height,size.width,size.height,size.width,size.height*0.2);
    path_0.cubicTo(size.width,size.height*0,size.width*0,size.height*0.4,size.width*0,size.height*0.5);
    path_0.quadraticBezierTo(size.width*0,size.height,size.width*0,size.height);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);
  

  // Layer 1
  
  Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;
     
         
    
    canvas.drawPath(path_0, paint_stroke_0);
  
    
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
  
}
