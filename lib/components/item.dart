import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../model/number_model.dart';
import '../model/phrase_model.dart';

class NumberItem extends StatelessWidget {
  const NumberItem({super.key, required this.item,required this.color});
  final ItemModel item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        children: [
          // Image container
          Container(
            color: Color(0xffFEF6DB),
            child: Image.asset(item.image),
          ),
          // Expanded text area
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                children: [
                  Text(
                    item.jpName,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    item.enName,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Spacer for the play button
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
              onPressed: (){
                final player=AudioPlayer();
                player.play(AssetSource(item.sound));
              },
              icon: Icon(
                Icons.volume_up_outlined,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}











class PhrasesItem extends StatelessWidget {
  const PhrasesItem({super.key, required this.item, required this.color});

  final PhraseModel item;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.jpName,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    item.enName,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource(item.sound));
              },
              icon: Icon(
                Icons.volume_up_outlined,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
