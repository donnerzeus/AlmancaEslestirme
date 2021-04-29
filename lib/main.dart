import 'package:flutter/material.dart';
import 'package:almancaeslestirme/homepage.dart';
import 'package:almancaeslestirme/loginpage.dart';
import 'package:almancaeslestirme/sozluk.dart';

import 'Iletisim.dart';
import 'cevaplar.dart';
import 'homepage2.dart';



void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:{
        "/" : (context) => Login(),
        //  "/login":(context)=> Login(),
        "/homepage" : (context) => HomePage(),
        "iletisim" : (context) => Iletisim(),
        "cevaplar" : (context) => cevaplar(),
        "homepage2": (context) => HomePage2(),
        "sozluk" : (context) => sozluk(),


      },
    );




  }
}
class ItemModel {
  final String name;
  final String value;
  final IconData icon;
  bool accepting;








  ItemModel({this.name, this.value, this.icon, this.accepting= false});}