import 'package:flutter/material.dart';

import '../components/item.dart';
import '../models/number.dart';
class colors_page extends StatelessWidget {
  const colors_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List<content> colors = [
      content(
          image: 'assets/images/colors/color_black.png',
          JaName: 'ichi',
          EnName: 'black',
          sound: 'black.wav'),
      content(
          image: 'assets/images/colors/color_brown.png',
          JaName: 'ichi',
          EnName: 'brown',
          sound: 'brown.wav'
      ),
      content(
          image: 'assets/images/colors/color_dusty_yellow.png',
          JaName: 'ichi',
          EnName: 'dusty yellow',
          sound: 'dusty yellow.wav'),
      content(
          image: 'assets/images/colors/color_gray.png',
          JaName: 'son',
          EnName: 'gray',
          sound: 'gray.wav'),
      content(
          image: 'assets/images/colors/color_green.png',
          JaName: 'ichi',
          EnName: 'green',
          sound: 'green.wav'),
      content(
          image: 'assets/images/colors/color_red.png',
          JaName: 'ichi',
          EnName: 'red',
          sound: 'red.wav'),
      content(
          image: 'assets/images/colors/color_white.png',
          JaName: 'ichi',
          EnName: 'white',
          sound: 'white.wav'),
      content(
          sound: 'yellow.wav',
          image: 'assets/images/colors/yellow.png',
          JaName: 'ichi',
          EnName: 'yellow'),

    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Colors'),
        backgroundColor: Color(0xff46322B),
      ),
      body:
      ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context,num){
          return item(number: colors[num],color: Color(0xff79359F),itemType:'colors',);
        },

      ),
    );
  }
}
