import 'package:flutter/material.dart';

import 'homepage.dart';


class cevaplar2 extends StatefulWidget {
  @override
  _cevaplar2State createState() => _cevaplar2State();
}

class _cevaplar2State extends State<cevaplar2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "CEVAPLAR - 2",
              style: TextStyle(

                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),

            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 16.0),
                  Text("Auto                            Araba"),
                  SizedBox(height: 4),
                  Text("Hubschrauber                    Helikopter"),
                  SizedBox(height: 4),
                  Text("Pferd                           At"),
                  SizedBox(height: 4),
                  Text("Motorrad                        Motorsiklet"),
                  SizedBox(height: 4),
                  Text("Schiff                          Gemi"),
                  SizedBox(height: 4),
                  Text("Frosch                          Kurbağa"),
                  SizedBox(height: 4),
                  Text("Spinne                          Örümcek"),
                  SizedBox(height: 4),
                  Text("Schach                          Satranç"),
                  SizedBox(height: 4),
                  Text("Karotten                        Havuç"),

                  SizedBox(height: 16),
                  Center(
                    // ignore: deprecated_member_use
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.pink,
                      child: Text("Tekrar Oyna"),
                      onPressed: ()
                      {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                        setState(() {

                        });
                      },
                    ),
                  ),


                ],
              ),
            ),
          ],

        ),

      ),

    );
  }
}
