import 'package:flutter/material.dart';

class AboutDisney extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,

      body : SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(padding: const EdgeInsets.only(top: 20),
                child : IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: (){
                    Navigator.pop(context);
                  },
                ),
                ),
                Padding(padding: const EdgeInsets.only(top: 20),

                  child: Image.asset('images/disneyhitam.png',
                      height: 25),
                ),
              ],
            ),

            Text('About Disneyplus+',
              style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'SFProDisplay',
                  color: Colors.white,
                  fontWeight: FontWeight.w400),
              textAlign: TextAlign.left,
            ),
            Padding(padding: const EdgeInsets.all(5),
              child : Text('Aplikasi ini dibuat untuk menyelesaikan tugas dicoding kelas Belajar Membuat Aplikasi Flutter untuk Pemula. Apabila ada kekurangan mohon maaf yang sebesar-besarnya karena saya adalah seorang pemula',
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'SFProDisplay',
                    color: Colors.white38,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      )
    );
  }
}
