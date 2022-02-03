import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {


  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: ListView(
        children: [
          Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: Text("Login",style: GoogleFonts.basic(fontSize: 22,color: Colors.white),),
                ),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Sign in',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.amber)),
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.amber)),
                  labelText: 'User Name',
                  labelStyle: TextStyle(color: Colors.white)
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.amber)),
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.amber)),
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.white)
                ),
              ),
            ),
            SizedBox(height: 15,),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                  },
                )
            ),
            Row(
              children: <Widget>[
                const Text('Does not have account?',
                    style: TextStyle(color: Colors.white),),
                TextButton(
                  child: const Text(
                    'Sign in',
                    style: TextStyle(fontSize: 20,color: Colors.white),
                  ),
                  onPressed: () {
                    //signup screen
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
        ],
      ),
    );
  }
}