import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';
import 'package:toku/model/number_model.dart';


class FamilyMembers extends StatelessWidget {
  const FamilyMembers({super.key});

  final List<ItemModel> numbers=const [
    ItemModel(
      sound: 'sounds/family_members_sound/grand_father.wav',
      image: 'assets/images/family_member/family_grandfather.png',
      jpName: 'Ojison',
      enName: 'Grand Father',
    ),
    ItemModel(
      sound:'sounds/family_members_sound/grand_mother.wav',
      image: 'assets/images/family_member/family_grandmother.png',
      jpName: 'Sobo',
      enName: 'Grand Mother',
    ),
    ItemModel(
      sound:'sounds/family_members_sound/mother.wav' ,
      image: 'assets/images/family_member/family_mother.png',
      jpName: 'Hahaoya',
      enName: 'Mother',
    ),
    ItemModel(
      sound:'sounds/family_members_sound/father.wav',
      image: 'assets/images/family_member/family_father.png',
      jpName: 'Chichioya',
      enName: 'Father',
    ),
    ItemModel(
      sound: 'sounds/family_members_sound/older_bother.wav',
      image: 'assets/images/family_member/family_older_brother.png',
      jpName: 'Nisan',
      enName: 'Old Brother',
    ),
    ItemModel(
      sound: 'sounds/family_members_sound/older_sister.wav',
      image: 'assets/images/family_member/family_older_sister.png',
      jpName: 'Ane',
      enName: 'Old Sister',
    ),
    ItemModel(
      sound: 'sounds/family_members_sound/younger_brohter.wav',
      image: 'assets/images/family_member/family_younger_brother.png',
      jpName: 'otootosan ',
      enName: 'Younger Brother',
    ),
    ItemModel(
      sound: 'sounds/family_members_sound/younger_sister.wav',
      image: 'assets/images/family_member/family_younger_sister.png',
      jpName: 'imootosan',
      enName: 'Younger Sister',
    ),

    ItemModel(
      sound:'sounds/family_members_sound/son.wav',
      image: 'assets/images/family_member/family_son.png',
      jpName: 'Musuko',
      enName: 'Son',
    ),
    ItemModel(
      sound: 'sounds/family_members_sound/daughter.wav',
      image: 'assets/images/family_member/family_daughter.png',
      jpName: 'Ojoosan',
      enName: 'Daughter',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();  // This will navigate back when pressed
          },
        ),
        title: Text(
          "Family Members",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
      body:ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context,num){
          return NumberItem(
            item: numbers[num],
            color:  Color(0xff558B37),
          );
        },

      ),

    );
  }

}

