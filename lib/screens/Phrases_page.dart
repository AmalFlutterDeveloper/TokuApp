import 'package:flutter/material.dart';

import '../components/item.dart';
import '../models/number.dart';
class Phrases_page extends StatelessWidget {

  const Phrases_page({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const List<content> Phrases = [
      content(
        sound: 'dont_forget_to_subscribe.wav',
        JaName: 'Kōdoku suru koto o ',
        EnName: 'dont forget to subscribe',
      ),
      content(
        sound: 'i_love_programming.wav',
        JaName: 'Watashi wa puroguramingu',
        EnName: 'i love  programming',
      ),
      content(
        sound: 'programming_is_easy.wav',
        JaName: 'Puroguramingu wa kantandesu ',
        EnName: 'programming is easy',
      ),
      content(
        sound: 'where_are_you_going.wav',
        JaName: 'Doko ni iku no',
        EnName: 'where are you going',
      ),
      content(
        sound: 'what_is_your_name.wav',
        JaName: 'Namae wa nandesu ka',
        EnName: 'what is your name ?',
      ),
      content(
        sound: 'i_love_anime.wav',
        JaName: 'Watashi wa anime ga daisukidesu',
        EnName: 'i love anime',
      ),
      content(
        sound: 'how_are_you_feeling.wav',
        JaName: 'Go kibun wa ikagadesu ka',
        EnName: 'how are you feeling?',
      ),
      content(
        sound: 'are_you_coming.wav',
        JaName: 'Kimasu ka',
        EnName: 'are you coming?',
      ),
      content(
        sound: 'yes_im_coming.wav',
        JaName: 'Hai watashi wa kite imasu',
        EnName: 'yes i am coming',
      ),

    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Phrases'),
        backgroundColor: Color(0xff46322B),
      ),
      body:
      ListView.builder(
        itemCount: Phrases.length,
        itemBuilder: (context,num){
          return item(number: Phrases[num],color: Color(0xff50ADC7),itemType:'phrases',);
        },

      ),
    );

  }
}
