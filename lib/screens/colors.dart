import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';
import 'package:toku/model/number_model.dart';


class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  final List<ItemModel> numbers=const [
    ItemModel(
      sound: 'sounds/colors_sound/white.wav',
      image: 'assets/images/colors/color_white.png',
      jpName: 'Shiro',
      enName: 'White',
    ),
    ItemModel(
      sound:'sounds/colors_sound/black.wav',
      image: 'assets/images/colors/color_black.png',
      jpName: 'Burakku',
      enName: 'Black',
    ),
    ItemModel(
      sound: 'sounds/colors_sound/brown.wav',
      image: 'assets/images/colors/color_brown.png',
      jpName: 'Chairo',
      enName: 'Brown',
    ),
    ItemModel(
      sound:'sounds/colors_sound/red.wav' ,
      image: 'assets/images/colors/color_red.png',
      jpName: 'Aka',
      enName: 'Red',
    ),
    ItemModel(
      sound:'sounds/colors_sound/yellow.wav',
      image: 'assets/images/colors/yellow.png',
      jpName: 'Kiiro',
      enName: 'Yellow',
    ),
    ItemModel(
      sound: 'sounds/colors_sound/green.wav',
      image: 'assets/images/colors/color_green.png',
      jpName: 'Midori',
      enName: 'Green',
    ),
    ItemModel(
      sound: 'sounds/colors_sound/gray.wav',
      image: 'assets/images/colors/color_gray.png',
      jpName: 'Gurē',
      enName: 'Gray',
    ),
    ItemModel(
      sound: 'sounds/colors_sound/dusty_yellow.wav',
      image: 'assets/images/colors/color_dusty_yellow.png',
      jpName: 'Hokori ppoi kiiro',
      enName: 'Dusty Yellow',
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
          "Colors",
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
            color:  Color(0xff6A1B9A),
          );
        },

      ),

    );
  }

}

