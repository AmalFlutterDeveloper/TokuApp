import 'package:flutter/material.dart';
import 'package:toku/screens/Phrases_page.dart';
import 'package:toku/screens/numbers_page.dart';
import '../components/categgory_item.dart';
import 'package:toku/screens/familyMembers.dart';

import 'colors_page.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF6DB),
      appBar: AppBar(
        title: Text('Toku'),
        backgroundColor: Color(0xff46322B),
      ),
      body: Column(
        children: [
          Category(
            onTap: (){
              Navigator.push(context, MaterialPageRoute (
                builder: (BuildContext context) => const numbersPage(),
              ),
              );
            },
            text:'Numbers',
            color: Color(0xffEF9235),
          ),
          Category(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context){
                    return familyMembers();
                  }
                ),
              );
            },
            text:'FamilyMembers',
            color: Color(0xff558B37),
          ),
          Category(
            onTap:
            (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return colors_page();

            },
          ),
    );},
            text:'Colors',
            color: Color(0xff79359F),
          ),
          Category(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return Phrases_page();
              }));
            },
            text:'Phrases',
            color: Color(0xff50ADC7),
          ),

        ],
      ),
    );
  }
}
