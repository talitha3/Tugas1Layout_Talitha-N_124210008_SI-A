// Nama : Talitha N
// NIM  : 124210008
// Kelas : SI-A
// Prak. Pemrograman Aplikasi Mobile

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeAnimationCurve: Curves.bounceIn,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        fontFamily: 'Poppins',
      ),
      title: 'Login',
      home: LoginPage(), // Gunakan LoginPage sebagai halaman awal
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[

//Tulisan Welcome
            SizedBox(height: 20,),
            Text('Welcome',
              style: TextStyle(
                  color: Color(0xFF1976D2),
                  fontSize: 32,
                  letterSpacing: 4.0,
                  fontWeight: FontWeight.bold),),
//menampilkan Gambar
            SizedBox (height: 30),
            Column(
                children: [
                  Image.asset('asset/login1.png'), // <-- SEE HERE
                ]
            ),

//TextFormField Username
            SizedBox (height: 5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey, width: 2.0),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  contentPadding:
                  EdgeInsets.only(left: 30.0, top: 20.0, bottom: 20.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    const BorderSide(color: Colors.blueAccent, width: 2.0),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  suffixIcon: Icon(
                    Icons.person,
                      color: Color(0xFF1976D2)
                  ),
                  labelText: ('Username'),
                  labelStyle:TextStyle(
                      color: Colors.grey
                  ),
                ),
              ),
            ),

//TextFormField Password
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: true,
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey, width: 2.0),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  contentPadding:
                  EdgeInsets.only(left: 30.0, top: 20.0, bottom: 20.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    const BorderSide(color: Colors.blueAccent, width: 2.0),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  suffixIcon: Icon(
                    Icons.lock,
                    color: Color(0xFF1976D2),
                  ),
                  labelText: ('Password'),
                  labelStyle:TextStyle(
                      color: Colors.grey
                  ),
                ),
              ),
            ),

//Buttons Login
            Container( // Bottons Login
              width: 200,
              height: 45,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xFF1976D2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            ),

//TextButton Forgot Password
            SizedBox (height: 0.5),
            TextButton(
              onPressed: (){
                },
              child: Text(
                'Forgot Password ?',
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
            ),

            SizedBox (height: 35),
            Text('or Sign in with ',
              style: TextStyle(
                  color: Colors.black26,
                  fontWeight: FontWeight.w800,
                  fontSize: 15,
                  letterSpacing: 1.0),),

//Baris Gambar icon
            SizedBox (height: 15),
            Row(
                mainAxisAlignment : MainAxisAlignment .spaceEvenly ,

                children: [
                  Image.asset('asset/facebook.png'),
                  Image.asset('asset/googlee.png'),
                  Image.asset('asset/github.png'),
                ]
            ),
          ],
        ),
      ),
    );
  }
}