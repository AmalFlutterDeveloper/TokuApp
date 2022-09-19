import 'package:flutter/material.dart';
import 'package:toku/models/number.dart';
import 'package:audioplayers/audioplayers.dart';

class item extends StatelessWidget {
  const item({required this.number,required this.color,required this.itemType});
  final content number;
  final Color color;
  final String itemType;
  @override
  Widget build(BuildContext context) {
    return  number.image != null?  Container(
      height: 77,
      color: color,
      child: Row(
        children: [
          Container(color: Color(0xffFFF6DC), child: Image.asset(number.image!)),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.JaName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  number.EnName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {

             try {
               AudioCache player = AudioCache(
                   prefix: 'assets/sounds/$itemType/');
               player.play(number.sound);
             }catch(ex){
               print(ex);
             }
            },
            icon: Icon(
              Icons.play_arrow,
              size: 26,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ):
    Container(
      height: 77,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.JaName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  number.EnName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {

              try {
                AudioCache player = AudioCache(
                    prefix: 'assets/sounds/$itemType/');
                player.play(number.sound);
              }catch(ex){
                print(ex);
              }
            },
            icon: Icon(
              Icons.play_arrow,
              size: 26,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
