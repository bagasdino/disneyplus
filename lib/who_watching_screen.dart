import 'package:disneyplus/model/who_watch.dart';
import 'package:flutter/material.dart';
import 'package:disneyplus/menu_screen.dart';

class WhoWatching extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        color: Colors.black,
        padding: const EdgeInsets.only(top: 100),
        child:  Column(
          children: <Widget>[
            const Text('Who'+"'"+'s watching?',
              style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'SFProDisplay',
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),

            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.only(top: 80),
                itemBuilder: (context, index) {
                  final WhoWatch who = whoWatchList[index];
                  return InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return MenuScreen(who: who);
                      }));
                    },
                    child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage:
                          NetworkImage(who.photo),
                          radius: 40,
                        ),
                        SizedBox(height: 5),
                        Text(
                          who.name,
                          style: TextStyle(fontSize: 16.0, color: Colors.white70, fontFamily: 'SFProDisplayMedium'),
                        ),
                        SizedBox(height: 15),
                      ],
                    ),
                  );
                },
                itemCount: whoWatchList.length,
              ),
            ),
            const SizedBox(
              height: 190,
            ),
            Image.asset('images/disneyhitam.png',
                width: 120),
          ],
        ),
      ),
    );
  }
}