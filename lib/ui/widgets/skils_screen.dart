import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SkilsScreen extends StatefulWidget {
  const SkilsScreen({super.key});

  @override
  State<SkilsScreen> createState() => _SkilsScreenState();
}

class _SkilsScreenState extends State<SkilsScreen> {

  List<Map<String,dynamic>> datas = [
    {
      "name": "HTML 5",
      "url": "html",
    },
    {
      "name": "VS code",
      "url": "vscode"
    },
    {
      "name": "Figma",
      "url": "figma",
    },
    {
      "name": "Flutter",
      "url": "flutter"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Skills: Tech",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),

          SizedBox(height: 20,),
          
          for(int i = 0;i < datas.length;i++)
            ListTile(
              leading: SvgPicture.asset("assets/emojies/${datas[i]['url']}.svg"),
              title: Text("${datas[i]['name']}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
            )
        ],
      ),
    );
  }
}
