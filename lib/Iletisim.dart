import 'package:flutter/material.dart';

class Iletisim extends StatefulWidget {
  @override
  _IletisimState createState() => _IletisimState();
}

class _IletisimState extends State<Iletisim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[400],
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(

                "İLETİŞİM",

                style: TextStyle(

                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),

              ),
              Text("Proje ile ilgili dilek ve görüşeriniz için;"),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 16.0),
                    TextField(
                      decoration: InputDecoration(

                          filled: true,
                          hintText: "Name",
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  width: 1,
                                  style: BorderStyle.solid,
                                  color: Colors.blue
                              )
                          )

                      ),
                    ),
                    SizedBox(height: 8.0),
                    TextField(
                        decoration: InputDecoration(
                            filled: true,
                            hintText: "Email",
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                    width: 1,
                                    style: BorderStyle.solid,
                                    color: Colors.blue
                                )
                            ))
                    ),
                    SizedBox(height: 8.0),
                    TextField(
                      maxLines: 7,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Message",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  width: 1,
                                  style: BorderStyle.solid,
                                  color: Colors.blue
                              )
                          )
                      ),

                    ),
                    SizedBox(height: 8.0),
                    MaterialButton(
                        height: 60.0,
                        minWidth: double.infinity,
                        color: Colors.blue[300],
                        onPressed: (){},
                        child: Text("Gönder",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        )
                        )
                    ),
                    SizedBox(height: 8.0),
                    Text(

                        "Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3301456 kodlu MOBİL PROGRAMLAMA dersi kapsamında 193311072 numaralı Öğrenci Öğrenir tarafından 30 Nisan 2021 günü yapılmıştır."


                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
