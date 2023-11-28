import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


final player = AudioPlayer();


void main() {
  runApp(MusicWidget());
}


Expanded myButton(songPath,btnText,btnColor){
  return Expanded(
    child: Padding(
      padding: EdgeInsets.only(bottom: 2,),
      child: ElevatedButton(
        onPressed:() async {
          player.play(AssetSource(songPath));
        },

        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0), // Set border radius to 0 for a flat appearance
          ),
          elevation: 8, // Adjust the elevation to give it a lifted appearance
        ),

        child: Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Row(
              children:[
                Icon(
                  Icons.music_note,
                  color: Colors.purple,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(btnText,
                  style: TextStyle(
                    color: btnColor,
                    fontSize: 20.0,
                  ),
                ),
              ]
          ),
        ),
      ),
    ),
  );
}


class MusicWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {




    return MaterialApp(
      home: Scaffold(



        backgroundColor: Colors.purple[300],
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text('نغمات',
            style: TextStyle(
              color: Colors.white,
            ),
          ),

        ),

        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            myButton('rbabi.mp3','عزف ربابة',Colors.purple),
            myButton('d7eh.mp3','عزف دحية',Colors.purple),
            myButton('anam.mp3','عزف كمان',Colors.purple),
            myButton('dbkh.mp3','عزف دبكة',Colors.purple),
            myButton('shra.mp3','عزف سهرة حب',Colors.purple),
            myButton('de3a.mp3','عزف ضيعة ضايعة',Colors.purple),
            myButton('Dar.mp3','عزف دارت الأيام',Colors.purple),


          ],
        ),

      ),

      builder: (context, child) { // set the all app to start from left to right ;
        return Directionality(
          textDirection: TextDirection.rtl,
          child: child!,
        );
      },

    );
  }
}
