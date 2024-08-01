import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Languages",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,),),
          SizedBox(height: 30,),
          ListTile(
            leading: SvgPicture.asset("assets/emojies/english.svg"),
            title: Text("English"),
            subtitle: Text("Beginner"),
          )
        ],
      ),
    );
  }
}
