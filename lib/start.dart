import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kanesa_cinema/Daftar.dart';

import 'Login.dart';
class Start extends StatefulWidget {
  const Start({ Key? key }) : super(key: key);

  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(mainAxisAlignment:MainAxisAlignment.spaceAround,
        children: [
          Text("Selamat Datang!!",style: GoogleFonts.basic(fontSize: 32,color: Colors.white),),
          Text("Silahkan Login atau buat akun baru jika ini pertama kali anda menggunakan aplikasi ini",style: GoogleFonts.basic(fontSize: 14,color: Colors.white),),
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));}, child: Text("login")),
                SizedBox(height: 10,)
                ,ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Daftar()));}, child: Text("Sign Up"))
              ],
            ),
          )
        ],
      ),
      )
    );
  }
}