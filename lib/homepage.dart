import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'cevaplar.dart';
import 'homepage2.dart';


void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: "Matching Game",
      home: HomePage(),

    );
  }
}

class HomePage extends StatefulWidget {
  final username;

  const HomePage({Key key, this.username}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {

  List<ItemModel> items;
  List<ItemModel>items2;

  int score;
  bool gameOver;

  @override
  void initState() {
    super.initState();
    initGame();
  }

  initGame(){
    gameOver = false;
    score=0;
    items=[
      ItemModel(icon:FontAwesomeIcons.coffee,name:"kaffee", value:"Coffee"),
      ItemModel(icon:FontAwesomeIcons.dog,name:"Hunt", value:"Dog"),
      ItemModel(icon:FontAwesomeIcons.cat,name:"Katze", value:"Cat"),
      ItemModel(icon:FontAwesomeIcons.birthdayCake,name:"Kuchen", value: "Cake"),
      ItemModel(icon:FontAwesomeIcons.bus,name:"Bus", value:"Bus"),
      ItemModel(icon:FontAwesomeIcons.plane, name:"Flugzeug", value:"Plane"),
      ItemModel(icon:FontAwesomeIcons.headphones, name:"Kopfhörer", value:"Headphones"),
      ItemModel(icon:FontAwesomeIcons.apple,name:"Äpfel",value:"Apple"),
      ItemModel(icon:FontAwesomeIcons.ambulance,name:"Krankenwagen",value:"Ambulance"),
    ];

    items2 = List<ItemModel>.from(items);
    items.shuffle();
    items2.shuffle();
  }


  @override
  Widget build(BuildContext context) {
    if(items.length == 0)
      gameOver = true;
    return Container(

        decoration: BoxDecoration(
            gradient:
            new LinearGradient(colors: [Colors.blue[400], Colors.pink[200]])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            centerTitle: true,
            title: Text('Matching Game'),
          ),


          body: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Text.rich(TextSpan(
                    children: [
                      TextSpan(text: "Score: "),
                      TextSpan(text: "$score", style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                      ))
                    ]
                )
                ),
                if(!gameOver)
                  Row(
                    children: <Widget>[
                      Column(
                          children: items.map((item) {
                            return Container(
                              margin: const EdgeInsets.all(8.0),
                              child: Draggable<ItemModel>(
                                data: item,
                                childWhenDragging: Icon(
                                  item.icon, color: Colors.grey,size: 50.0,),
                                feedback: Icon(item.icon,color: Colors.purple[800],size: 50,),
                                child: Icon(item.icon, color: Colors.purple[800], size:50,),
                              ),
                            );


                          }).toList()
                      ),
                      Spacer(

                      ),
                      Column(
                          children: items2.map((item){
                            return DragTarget<ItemModel>(
                              onAccept: (receivedItem){
                                if(item.value== receivedItem.value){
                                  setState(() {
                                    items.remove(receivedItem);
                                    items2.remove(item);
                                    score+=10;
                                    item.accepting =false;
                                  });

                                }else{
                                  setState(() {
                                    score-=5;
                                    item.accepting =false;

                                  });
                                }
                              },
                              onLeave: (receivedItem){
                                setState(() {
                                  item.accepting=false;
                                });
                              },
                              onWillAccept: (receivedItem){
                                setState(() {
                                  item.accepting=true;
                                });
                                return true;
                              },
                              builder: (context, acceptedItems,rejectedItem) => Container(
                                color: item.accepting? Colors.red:Colors.black,
                                height: 50,
                                width: 120,
                                alignment: Alignment.center,
                                margin: const EdgeInsets.all(8.0),
                                child: Text(item.name, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
                                    fontSize: 18.0),),
                              ),


                            );

                          }).toList()

                      ),
                    ],
                  ),
                if(gameOver)
                  Text("Oyun Bitti", style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                  ),),
                SizedBox(
                  height:8,
                ),
                if(gameOver)
                  Center(
                    // ignore: deprecated_member_use
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.pink,
                      child: Text("Tekrar Oyna"),
                      onPressed: ()
                      {
                        initGame();
                        setState(() {

                        });
                      },
                    ),
                  ),
                SizedBox(
                  height:8,
                ),
                if(gameOver)
                  Center(
                    // ignore: deprecated_member_use
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.pink,
                      child: Text("Skorunu Kaydet"),
                      onPressed: ()
                      {
                        initGame();
                        setState(() {

                        });
                      },
                    ),
                  ),
                SizedBox(
                  height:8,
                ),
                if(gameOver)

                  Center(
                    // ignore: deprecated_member_use
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.pink,
                      child: Text("Cevaplar -->"),
                      onPressed: ()
                      {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => cevaplar()));
                        initGame();
                        setState(() {

                        });
                      },
                    ),
                  ),
                SizedBox(
                  height:8,
                ),
                if(gameOver)

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
                        initGame();
                        setState(() {

                        });
                      },
                    ),
                  ),


              ],
            ),

          ),
        )
    );
  }
}
class ItemModel {
  final String name;
  final String value;
  final IconData icon;
  bool accepting;

  ItemModel({this.name, this.value, this.icon, this.accepting= false});}
