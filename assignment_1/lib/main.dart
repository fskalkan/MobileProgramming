import 'package:flutter/material.dart';
import 'HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginDemo(),
    );
  }
}

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 0, 255),
        title: Text("LOGIN PAGE"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                    width: 200,
                    height: 200,
                    
                    child: Image.asset('asset/images/icon.png')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:15.0,right: 15.0,top:20,bottom: 0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder( ),
                    labelText: 'Email',
                    hintText: 'Enter your email address',
                    hintStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 15),
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: TextField(

                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter secure password',
                    hintStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 15),
),
              ),
            ),
            TextButton(
              onPressed: (){
              },
              child: Text(
                'Forgot Password',
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 255), fontSize: 15),
              ),
            ),
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 0, 0, 255), borderRadius: BorderRadius.circular(5)),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => HomePage()));
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
               TextButton(
              onPressed: (){
              },
              child: Text(
                'New User',
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 255), fontSize: 15),
              ),
            ),
 
          ],
        ),
      ),
    );
  }
}
