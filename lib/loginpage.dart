import 'package:flutter/material.dart';
import 'package:almancaeslestirme/homepage.dart';

import 'package:almancaeslestirme/ForgotPassword.dart';
import 'package:almancaeslestirme/Signup.dart';
import 'package:almancaeslestirme/sozluk.dart';

import 'Iletisim.dart';

String _mail;
String _sifre;


class Login extends StatefulWidget {
  @override
  const Login() : super();
  _LoginState createState() => _LoginState();


}
TextEditingController emailController = new TextEditingController();
TextEditingController passController = new TextEditingController();


class _LoginState extends State<Login> {
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          gradient:
          new LinearGradient(colors: [Colors.blue[400], Colors.blue[200]])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              height: height * 0.15,
            ),
            Container(
              margin: EdgeInsets.only(top: height * 0.15),
              height: height * 0.85,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: ListView(
                children: [
                  Text(
                    'Hoşgeldiniz'.toUpperCase(),
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,


                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Center(
                    child: Container(
                      height: 1,
                      width: width * 0.8,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.1,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: width * 0.05),
                    child: TextField(

                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.text,
                        controller: emailController,
                        decoration: InputDecoration(

                          hintText: "Eposta* ",

                          hintStyle: TextStyle(
                              fontWeight: FontWeight.bold, letterSpacing: 1.8),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                width: 1,
                                style: BorderStyle.solid,
                                color: Colors.blue),
                          ),

                          filled: true,
                          fillColor: Colors.grey[200],
                          contentPadding: EdgeInsets.all(12),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                width: 1,
                                style: BorderStyle.solid,
                                color: Colors.grey),

                          ),

                        )
                    ),

                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: width * 0.05),
                    child: TextField(

                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        controller: passController,
                        decoration: InputDecoration(
                          hintText: "Şifre* ",
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.bold, letterSpacing: 1.8),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                width: 1,
                                style: BorderStyle.solid,
                                color: Colors.blue),
                          ),
                          filled: true,
                          fillColor: Colors.grey[200],
                          contentPadding: EdgeInsets.all(12),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                width: 1,
                                style: BorderStyle.solid,
                                color: Colors.grey),
                          ),
                        )),

                  ),

                  SizedBox(
                    height: height * 0.04,
                  ),

                  Center(

                    child: Container(
                      padding:
                      EdgeInsets.symmetric(horizontal: 26, vertical: 10),
                      decoration: BoxDecoration(
                          gradient: new LinearGradient(
                              colors: [Colors.blue, Colors.blue[200]]),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 4,
                                color: Colors.blue[200],
                                offset: Offset(2, 2))
                          ]),

                      child: InkWell(

                        onTap: () {

                          //BURADA İF OLACAK
                          if(passController.text == "admin" && emailController.text == "admin")
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          else
                            showDialog(context: context,
                                builder:(BuildContext context){
                                  return AlertDialog(
                                    title: Text("Eposta ve Şifrenizi kontrol ediniz."),
                                  );
                                }
                            );
                        },
                        child: Text(
                          " Giriş ".toUpperCase(),
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              //  fontWeight: FontWeight.bold,
                              letterSpacing: 1.7),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: height * 0.05,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgotPassword()));
                    },
                    child: Text(
                      "Şifremi Unuttum ?".toUpperCase(),
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                          //  fontWeight: FontWeight.bold,
                          letterSpacing: 1.7),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Center(
                    child: Container(
                      height: 1,
                      width: width * 0.8,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  Text(
                    "Yeni Hesap Oluştur".toUpperCase(),
                    style: TextStyle(
                        fontSize: 16,
                        // color: Colors.blue,
                        //  fontWeight: FontWeight.bold,
                        letterSpacing: 1.7),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Signup()));
                    },
                    child: Center(
                      child: Container(
                        padding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                            gradient: new LinearGradient(
                                colors: [Colors.blue, Colors.blue[200]]),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 4,
                                  color: Colors.blue[200],
                                  offset: Offset(2, 2))
                            ]),
                        child: Text(
                          " Üye ol ".toUpperCase(),
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.7),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 8.0,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Iletisim()));
                    },
                    child: Center(
                      child: Container(
                        padding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                            gradient: new LinearGradient(
                                colors: [Colors.blue, Colors.blue[200]]),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 4,
                                  color: Colors.blue[200],
                                  offset: Offset(2, 2))
                            ]),
                        child: Text(
                          "İletişim".toUpperCase(),
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.7),
                          textAlign: TextAlign.center,
                        ),

                      ),

                    ),

                  ),
                  SizedBox(height: 8.0),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => sozluk()));
                    },
                    child: Center(
                      child: Container(
                        padding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                            gradient: new LinearGradient(
                                colors: [Colors.blue, Colors.blue[200]]),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 4,
                                  color: Colors.blue[200],
                                  offset: Offset(2, 2))
                            ]),
                        child: Text(
                          " Sözlük ".toUpperCase(),
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.7),
                          textAlign: TextAlign.center,
                        ),

                      ),

                    ),

                  ),
                  SizedBox(height: 8.0),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
