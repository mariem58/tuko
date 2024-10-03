import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toku/components/category_item.dart';
import 'colors.dart';
import 'family_members.dart';
import 'numbers.dart';
import 'phases.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFEF6DB),
        appBar: AppBar(
          backgroundColor: Color(0xff46322B),
          title: Text(
            "Toku",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Column(
          children: [
            Category(
              text: "Numbers",
              color: Color(0xffEF9235),
              OnTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context){
                      return Numbers();
                    }),
                );
              },

            ),
            Category(
              text: "Family Member",
              color:  Color(0xff558B37),
              OnTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context){
                      return FamilyMembers();
                    }),
                );
              },

              ),
            Category(text: "Colors",color: Color(0xff6A1B9A) ,
              OnTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context){
                    return ColorsPage();
                  }),
              );
            },),
            Category(text: "Phases",color:Color(0xff03A9F4)
              ,OnTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context){
                    return Phases();
                  }),
              );
            },),

          ],
        )
    );
  }
}



