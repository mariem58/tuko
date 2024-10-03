import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';
import 'package:toku/model/number_model.dart';


class Numbers extends StatelessWidget {
  const Numbers({super.key});
  final List<ItemModel> numbers=const [
    ItemModel(
        sound:'sounds/numbers_sound/number_one_sound.mp3' ,
        image: 'assets/images/numbers/number_one.png',
        jpName: 'inci',
        enName: 'one',
    ),
    ItemModel(
        sound:'sounds/numbers_sound/number_two_sound.mp3',
        image: 'assets/images/numbers/number_two.png',
        jpName: 'Ni',
        enName: 'two',
    ),
    ItemModel(
        sound: 'sounds/numbers_sound/number_two_sound.mp3',
        image: 'assets/images/numbers/number_three.png',
        jpName: 'San',
        enName: 'three',
    ),
    ItemModel(
        sound: 'sounds/numbers_sound/number_four_sound.mp3',
        image: 'assets/images/numbers/number_four.png',
        jpName: 'Shi',
        enName: 'four',
    ),
    ItemModel(
        sound: 'sounds/numbers_sound/number_five_sound.mp3',
        image: 'assets/images/numbers/number_five.png',
        jpName: 'Go',
        enName: 'five',
    ),
    ItemModel(
        sound: 'sounds/numbers_sound/number_six_sound.mp3',
        image: 'assets/images/numbers/number_six.png',
        jpName: 'Roku',
        enName: 'six',
    ),
    ItemModel(
        sound: 'sounds/numbers_sound/number_seven_sound.mp3',
        image: 'assets/images/numbers/number_seven.png',
        jpName: 'Sebon',
        enName: 'seven',
    ),
    ItemModel(
        sound:'sounds/numbers_sound/number_eight_sound.mp3',
        image: 'assets/images/numbers/number_eight.png',
        jpName: 'hacki',
        enName: 'eight',
    ),
    ItemModel(
        sound:'sounds/numbers_sound/number_nine_sound.mp3',
        image: 'assets/images/numbers/number_nine.png',
        jpName: 'Kyu',
        enName: 'nine',
    ),
    ItemModel(
        sound: 'sounds/numbers_sound/number_ten_sound.mp3',
        image: 'assets/images/numbers/number_ten.png',
        jpName: 'Ju',
        enName: 'ten',
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
          "Numbers",
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
            color: Color(0xffEF9235),
          );
        },

      ),

    );
  }
  // List<NumberItem> getList(List<Number> numbers){
  //   List<NumberItem> listItem=[];
  //   for(int i =0;i<numbers.length;i++){
  //     listItem.add( NumberItem(number: numbers[i]));
  //   }
  //   return listItem;
  // }
}

