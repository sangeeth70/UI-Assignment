import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  var value;
  var currentvalue;
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
      backgroundColor: Color(-15578207),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
              margin: EdgeInsets.only(top: 20),
              child: ListTile(
                title: Text('Male',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500)),
                leading: Radio<String>(
                  value: "Male",
                  onChanged: (value) {
                    setState(() {
                      currentvalue = value!;
                    });
                    print(currentvalue);
                  },
                  groupValue: currentvalue,
                  focusColor: Colors.white,
                  activeColor: Colors.white,
                ),
              ),
            ),
            Container(
                child: ListTile(
              leading: Radio<String>(
                value: "Female",
                onChanged: (value) {
                  setState(() {
                    currentvalue = value!;
                  });
                  print(currentvalue);
                },
                groupValue: currentvalue,
                focusColor: Colors.white,
                activeColor: Colors.white,
              ),
              focusColor: Colors.white,
              title: Text(
                'Female',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            )),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'SAVE',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),fixedSize: Size(320, 35),primary: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// backgroundColor: const Color(-15578207),
// body: SingleChildScrollView(
//   child: Column(children: [
//     Container(
//       margin: EdgeInsets.only(top: 30),
//       child: TextField(
//         decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide(color: Colors.teal,width: 2.0),borderRadius: BorderRadius.circular(25)),
//             focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.teal,width: 2.0)),
//             enabledBorder: OutlineInputBorder(
//                 borderSide: BorderSide(color: Colors.white, width: 2.0),
//                 borderRadius: BorderRadius.circular(25)),
//             labelText: 'Prefilled text field',
//             labelStyle: TextStyle(color: Colors.white)),
//       ),
//     ),
//               Container(child: Row(
//                 children:[
//
//             ListTile(title: Text("male"),
//               leading: Radio<String>(
//                 value: "Male",
//                 onChanged: (value) {setState(() {
//                   currentvalue=value!;
//                 });
//                 print(currentvalue);
//                 },
//                 groupValue: currentvalue,
//               ),
//             ),
//             ListTile(
//               leading: Radio<String>(
//                 value: "Female",
//                 onChanged: (value) {setState(() {
//                   currentvalue=value!;
//                 });
//                 print(currentvalue);},
//                 groupValue: currentvalue,
//               ),
//             )
//
//           ],),),
//
//
//
//           Container(margin: EdgeInsets.only(left: 10, top: 20),
//             child: ElevatedButton(
//               onPressed: () {
//                 // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SecondPage()));
//               },
//               child: const Text(
//                 'SAVE',
//                 style: TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.w900,
//                     fontSize: 17),
//               ),
//               style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30)),
//                 fixedSize: Size(320, 35),
//                 primary: Colors.white,
//                 // shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                 //         RoundedRectangleBorder(
//                 //   borderRadius: BorderRadius.circular(25),
//                 // ))),
//               ),
//             ),
//           )
//
//
//
//
//         ]),
//       ),
//     );
//   }
// }
