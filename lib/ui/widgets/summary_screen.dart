import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SummaryScreen extends StatefulWidget {
  const SummaryScreen({super.key});

  @override
  State<SummaryScreen> createState() => _SummaryScreenState();
}

class _SummaryScreenState extends State<SummaryScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Summary",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            SizedBox(height: 30,),

            Column(
              children: [
                Center(child: Icon(Icons.business_center,color: Colors.deepPurple,size: 48,),),
                SizedBox(height: 25,),
                Center(child: Text("Experience",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),),
                SizedBox(height: 20,),
                Center(child: Text("I have never worked anywhere before. I did the projects of the lesson only after studying at Salvation Education",style: TextStyle(fontSize: 18,),textAlign: TextAlign.center,),),
              ],
            ),

            SizedBox(height: 30,),

            Column(
              children: [
                Center(child: Icon(Icons.chat,color: Colors.deepPurple,size: 48,),),
                SizedBox(height: 25,),
                Center(child: Text("Open-minded",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),),
                SizedBox(height: 20,),
                Center(child: Text("I'm a sucker for all kinds of news. That is, I try to create new projects and new fics",style: TextStyle(fontSize: 18,),textAlign: TextAlign.center,),),
              ],
            ),

            SizedBox(height: 50,),


            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/emojies/happy_emoji.svg"),
                  SizedBox(height: 20,),
                  Text("Empathic & humble",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  
                  Text("The user is in the center.",style: TextStyle(fontSize: 16),)
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
