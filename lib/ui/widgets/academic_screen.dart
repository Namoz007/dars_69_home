import 'package:flutter/material.dart';

class AcademicScreen extends StatefulWidget {
  const AcademicScreen({super.key});

  @override
  State<AcademicScreen> createState() => _AcademicScreenState();
}

class _AcademicScreenState extends State<AcademicScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Academic backgr.",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),),
          SizedBox(height: 36,),
          Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.bookmark,color: Colors.purpleAccent,size: 30,),
                    SizedBox(width: 10,),
                    Text("Specialization",style: TextStyle(fontSize: 20,),)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Flutter Developer",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),),
                      Text("Najot Ta'lim - Learned Foudation and Bootcamp",style: TextStyle(fontSize: 20,),),
                      Text("Year 2023-2024",style: TextStyle(fontSize: 16,),)
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
