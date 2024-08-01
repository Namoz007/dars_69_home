import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage("https://avatars.mds.yandex.net/i?id=d261ab216dd50aa827edc843ee83abf763bf9083-5318825-images-thumbs&n=13"),
                  fit: BoxFit.cover
                ),
              ),
            ),
          ),

          SizedBox(height: 30,),
          
          Text("Muhammadzohid Qahramonov",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
          Text("suratdagi man emasman"),
          SizedBox(height: 20,),

          Text("Flutter developer",style: TextStyle(fontSize: 25,),),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on_sharp),
              Text("Uzbekistan,Tashkent Uchtepa",style: TextStyle(fontWeight: FontWeight.bold),)
            ],
          )
        ],
      ),
    );
  }
}
