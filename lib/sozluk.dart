import 'package:flutter/material.dart';

class sozluk extends StatefulWidget {
  @override
  _sozlukstate createState() => _sozlukstate();
}

class _sozlukstate extends State<sozluk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: const Center(child: Text(' Kelimeler Sözlüğü', style: TextStyle(fontSize: 18, color: Colors.black),)),
              height: 50,
              color: Colors.blue[600],

            ),
          ),
          Container(
            height: 50,
            color: Colors.blue[400],
            child: const Center(child: Text('Hunt' +'   '+ 'Köpek', style: TextStyle(fontSize: 18, color: Colors.black),)),
            padding: EdgeInsets.only(left:2),
          ),
          Container(
            height: 50,
            color: Colors.blue[400],
            child: const Center(child: Text('Katze' +'   '+ 'Kedi', style: TextStyle(fontSize: 18, color: Colors.black),)),
            padding: EdgeInsets.only(left:2),
          ),
          Container(
            height: 50,
            color: Colors.blue[400],
            child: const Center(child: Text('Kaffee' +'   '+ 'Kahve', style: TextStyle(fontSize: 18, color: Colors.black),)),
          ),
          Container(
            height: 50,
            color: Colors.blue[400],
            child: const Center(child: Text('Bus' +'   '+ 'Otobüs', style: TextStyle(fontSize: 18, color: Colors.black),)),
          ),
          Container(
            height: 50,
            color: Colors.blue[400],
            child: const Center(child: Text(' Flugzeug' +'   '+ 'Uçak', style: TextStyle(fontSize: 18, color: Colors.black),)),
          ),
          Container(
            height: 50,
            color: Colors.blue[400],
            child: const Center(child: Text('Äpfel' +'   '+ 'Elma', style: TextStyle(fontSize: 18, color: Colors.black),)),
          ),
          Container(
            height: 50,
            color: Colors.blue[400],
            child: const Center(child: Text('   Krankenwagen' +'   '+ 'Ambulans', style: TextStyle(fontSize: 18, color: Colors.black),)),
          ),
          Container(
            height: 50,
            color: Colors.blue[400],
            child: const Center(child: Text('Bus' +'   '+ 'Otobüs', style: TextStyle(fontSize: 18, color: Colors.black),)),
          ),
          Container(
            height: 50,
            color: Colors.blue[400],
            child: const Center(child: Text(' Kuchen' +'   '+ 'Pasta', style: TextStyle(fontSize: 18, color: Colors.black),)),
          ),
          Container(
            height: 50,
            color: Colors.blue[400],
            child: const Center(child: Text('   Hubschrauber' +'   '+ 'Helikopter', style: TextStyle(fontSize: 18, color: Colors.black),)),
          ),
          Container(
            height: 50,
            color: Colors.blue[400],
            child: const Center(child: Text('Pferd' +'   '+ 'At', style: TextStyle(fontSize: 18, color: Colors.black),)),
          ),
          Container(
            height: 50,
            color: Colors.blue[400],
            child: const Center(child: Text(' Motorrad' +'   '+ 'Motorsiklet', style: TextStyle(fontSize: 18, color: Colors.black),)),
          ),
          Container(
            height: 50,
            color: Colors.blue[400],
            child: const Center(child: Text(' Schiff' +'   '+ 'Gemi', style: TextStyle(fontSize: 18, color: Colors.black),)),
          ),
          Container(
            height: 50,
            color: Colors.blue[400],
            child: const Center(child: Text('Frosch' +'   '+ 'Kurbağa', style: TextStyle(fontSize: 18, color: Colors.black),)),
          ),
          Container(
            height: 50,
            color: Colors.blue[400],
            child: const Center(child: Text('Spinne' +'   '+ 'Örümcek', style: TextStyle(fontSize: 18, color: Colors.black),)),
          ),
          Container(
            height: 50,
            color: Colors.blue[400],
            child: const Center(child: Text('Schach' +'   '+ 'Satranç', style: TextStyle(fontSize: 18, color: Colors.black),)),
          ),
          Container(
            height: 50,
            color: Colors.blue[400],
            child: const Center(child: Text('Karotten' +'   '+ 'Havuç', style: TextStyle(fontSize: 18, color: Colors.black),)),
          ),

        ],
      ),
    );
  }
}
