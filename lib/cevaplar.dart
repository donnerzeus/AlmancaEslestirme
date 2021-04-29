import 'package:flutter/material.dart';

import 'homepage.dart';
import 'homepage2.dart';

class cevaplar extends StatefulWidget {
  @override
  _cevaplarState createState() => _cevaplarState();
}

class _cevaplarState extends State<cevaplar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[400],
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "CEVAPLAR",
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
                    Text("Hunt                               Köpek"),
                    SizedBox(height: 4),
                    Text("Katze                              Kedi"),
                    SizedBox(height: 4),
                    Text("Kaffee                             Kahve"),
                    SizedBox(height: 4),
                    Text("Bus                                Otobüs"),
                    SizedBox(height: 4),
                    Text("Flugzeug                           Uçak"),
                    SizedBox(height: 4),
                    Text("Äpfel                              Elma"),
                    SizedBox(height: 4),
                    Text("Krankenwagen                       Ambulans"),
                    SizedBox(height: 4),
                    Text("Bus                                Otobüs"),
                    SizedBox(height: 4),
                    Text("Kuchen                          Pasta"),

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
                    SizedBox(height: 6),
                    Center(
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                        textColor: Colors.white,
                        color: Colors.pink,
                        child: Text("2. Kademe"),
                        onPressed: ()
                        {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage2()));

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
        ));
  }
}
