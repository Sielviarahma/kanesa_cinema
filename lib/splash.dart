import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kanesa_cinema/main.dart';

import 'Login.dart';
import 'Start.dart';

class SPlash extends StatefulWidget {
  const SPlash({ Key? key }) : super(key: key);

  @override
  _SPlashState createState() => _SPlashState();
}

class _SPlashState extends State<SPlash> {
  @override
  void initState() {
    super.initState();
    startSplash();
  }

  startSplash() async {
    var durasi = const Duration(seconds: 3);
    return Timer(durasi, () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Start()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
        child: Text("Kanesa Cinema",style: GoogleFonts.basic(fontSize: 22,color: Colors.white),),
      ),
        // Container(
        //     height: MediaQuery.of(context).size.height,
        //     width: MediaQuery.of(context).size.width,
        //     child: Center(
        //       child: Container(
        //         child: Column(
        //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //           children: [
        //             Image.asset(
        //               'images/kanesa_cinema_transparan.png',
        //               width: MediaQuery.of(context).size.width * 0.6,
        //               height: MediaQuery.of(context).size.width * 0.6,
        //             ),
        //           ],
        //         ),
        //       ),
        //     ))
            );
  }
}