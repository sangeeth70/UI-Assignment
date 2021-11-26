import 'package:flutter/material.dart';
import 'package:untitled/secondpage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Complex Login'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: const Color(-15578207),
      ),
      backgroundColor: const Color(-15578207),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30),
              child: TextField(
                decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide(color: Colors.teal,width: 2.0),
                    borderRadius: BorderRadius.circular(25)),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 2.0),
                        borderRadius: BorderRadius.circular(25)
                ),
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.white),prefixIcon: Icon(Icons.email,color: Colors.white,)
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: TextField(
                decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide(width: 2.0),borderRadius: BorderRadius.circular(25)),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 2.0),
                        borderRadius: BorderRadius.circular(25)),
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.white),prefixIcon: Icon(Icons.lock,color: Colors.white)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: TextField(
                decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide(color: Colors.teal,width: 2.0),borderRadius: BorderRadius.circular(25)),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 2.0),
                      borderRadius: BorderRadius.circular(25),

                    ),
                    labelText: 'Response',
                    labelStyle: TextStyle(color: Colors.white),prefixIcon: const Icon(Icons.emoji_emotions_outlined,color: Colors.white,)),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, top: 40),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SecondPage()));
                    },
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontSize: 17),
                    ),
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(320, 35),shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30),),
                        primary: Colors.white,
                        // shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        //         RoundedRectangleBorder(
                        //   borderRadius: BorderRadius.circular(25),
                        // ))),
                  ),
                ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
