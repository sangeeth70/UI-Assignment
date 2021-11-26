import 'package:flutter/material.dart';
import 'package:untitled/thirdpage.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  var checkedvalue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Complex Async prefilled form'),
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
        child: Column(children: [
          Container(
            margin: EdgeInsets.only(top: 30),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal, width: 2.0),
                      borderRadius: BorderRadius.circular(25)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(25)),
                  labelText: 'Prefilled text field',
                  labelStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(
                    Icons.emoji_emotions_outlined,
                    color: Colors.white,
                  )),
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 30),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal, width: 2.0),
                      borderRadius: BorderRadius.circular(25)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(25)),
                  labelText: 'Prefilled text select',
                  labelStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(
                    Icons.emoji_emotions_outlined,
                    color: Colors.white,
                  )),
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 20),
            child: CheckboxListTile(
              title: Text(
                'Prefilled boolean field',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              ),
              value: checkedvalue,
              selected: checkedvalue,
              onChanged: (newValue) {
                setState(() {
                  checkedvalue = newValue!;
                });
              },activeColor: Colors.white,checkColor: Colors.black,
            ),
          ),

          // Container(margin: EdgeInsets.only(top: 30),child: return Checkbox(checkColor: ,),)

          Container(
            margin: EdgeInsets.only(left: 10, top: 40),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => ThirdPage()));
              },
              child: const Text(
                'SUBMIT',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 17),
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30)),
                fixedSize: Size(320, 35),
                primary: Colors.white,
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: 10, top: 20),
            child: ElevatedButton(
              onPressed: () {
                // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SecondPage()));
              },
              child: const Text(
                'CLEAR',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 17),
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30)),
                fixedSize: Size(320, 35),
                primary: Colors.white,
                // shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                //         RoundedRectangleBorder(
                //   borderRadius: BorderRadius.circular(25),
                // ))),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
