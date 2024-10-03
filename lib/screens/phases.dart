import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toku/components/item.dart'; // Make sure this is the correct path
import 'package:toku/model/phrase_model.dart';
import 'package:audioplayers/audioplayers.dart'; // Assuming you use audioplayers package

class Phases extends StatelessWidget {
  const Phases({super.key});

  final List<PhraseModel> item = const [
    PhraseModel(
      sound: 'sounds/phrases/are_you_coming.wav',
      jpName: 'Kimasu ka',
      enName: 'Are you coming',
    ),
    PhraseModel(
      sound: 'sounds/phrase_sound/how_are_you_feeling.wav',
      jpName: 'Go kibun wa ikagadesu ka',
      enName: 'how you are feeling?',
    ),
    PhraseModel(
      sound: 'sounds/phrase_sound/i_love_anime.wav',
      jpName: 'Watashi wa anime ga daisukidesu',
      enName: 'i love anime',
    ),
    PhraseModel(
      sound: 'sounds/phrase_sound/what_is_your_name.wav',
      jpName: 'Namae wa nandesu ka',
      enName: 'what is your name?',
    ),
    PhraseModel(
      sound: 'sounds/phrase_sound/where_are_you_going.wav',
      jpName: 'Doko ni iku no',
      enName: 'where are you going',
    ),
    PhraseModel(
      sound: 'sounds/phrase_sound/programming_is_easy.wav',
      jpName: 'Puroguraming wa kantandesu',
      enName: 'programming is easy',
    ),
    PhraseModel(
      sound: 'sounds/colors_sound/gray.wav',
      jpName: 'Watashi wa puroguramingo ga daisukidesu',
      enName: 'i love programming',
    ),
    PhraseModel(
      sound: 'sounds/phrase_sound/dont_forget_to_subscribe.wav',
      jpName: 'Kiodoku suru koto o wasurenaide kudasai',
      enName: "don't forget to subscribe",
    ),
    PhraseModel(
      sound: 'sounds/phrase_sound/yes_im_coming.wav',
      jpName: 'Hai, mata kimasu',
      enName: "yes in coming",
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
            Navigator.of(context).pop();  // Navigate back
          },
        ),
        title: Text(
          "Colors",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: item.length,
        itemBuilder: (context, index) {
          return PhrasesItem(
            item: item[index],
            color: Color(0xff03A9F4),
          );
        },
      ),
    );
  }
}