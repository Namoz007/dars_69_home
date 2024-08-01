import 'package:dars_69_lesson/bloc/book_bloc/book_bloc.dart';
import 'package:dars_69_lesson/bloc/book_bloc/book_event.dart';
import 'package:dars_69_lesson/services/download_services.dart';
import 'package:dars_69_lesson/ui/widgets/academic_screen.dart';
import 'package:dars_69_lesson/ui/widgets/language_screen.dart';
import 'package:dars_69_lesson/ui/widgets/profile_screen.dart';
import 'package:dars_69_lesson/ui/widgets/relevant_screen.dart';
import 'package:dars_69_lesson/ui/widgets/skils_screen.dart';
import 'package:dars_69_lesson/ui/widgets/summary_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _screenIndex = 0;

  List<Widget> _screens = [
    ProfileScreen(),
    SummaryScreen(),
    AcademicScreen(),
    RelevantScreen(),
    SkilsScreen(),
    LanguageScreen(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
            onTap: (){
              context.read<BookBloc>().add(DownloadBookEvenet());
            },
            child: Icon(Icons.picture_as_pdf),
          ),
        ],
      ),
      body: _screens[_screenIndex],
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _screenIndex != 0 ? InkWell(
            onTap: (){
              setState(() {
                _screenIndex -= 1;
              });
            },
            child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.arrow_back_ios_new,color: Colors.white,),
            ),
          ) : SizedBox(),

          InkWell(
            child: Container(
              width: 180,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.purpleAccent,
                border: Border.all(color: Colors.black,width: 3,)
              ),
              alignment: Alignment.center,
              child: Text("Contact",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
            ),
          ),

          _screenIndex + 1 != _screens.length ?InkWell(
            onTap: (){
              setState(() {
                _screenIndex += 1;
              });
            },
            child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.keyboard_arrow_right,color: Colors.white,),
            ),
          ) : SizedBox(),
        ],
      ),
    );
  }
}
