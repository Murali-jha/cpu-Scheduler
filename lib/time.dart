import 'package:flutter/material.dart';
import 'AlgoApp.dart';

class SetTimeQuantity extends StatefulWidget {
  @override
  _SetTimeQuantityState createState() => _SetTimeQuantityState();
}

class _SetTimeQuantityState extends State<SetTimeQuantity> {

  int timeQuantity1 = 3;
  int timeQuantity = 3;
  String name = "Murali";

  final number = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20.0)
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        title: Text("Set Time Quantum",style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(30.0),
            margin:  EdgeInsets.all(70.0),
            child: Center(
              child: Column(
                children: [
                  TextField(
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      setState(() {
                        timeQuantity1 = int.parse(value);
                        timeQuantity = timeQuantity1;
                        name = value;
                        print(timeQuantity);
                      });
                    },
                    controller: number,
                    decoration: InputDecoration(hintText: "Time Quantum"),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text("Time Quantum for Round Robbin is $timeQuantity",style: TextStyle(fontSize: 20.0),),
                  SizedBox(
                    height: 20.0,
                  ),
                  FlatButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text('Submit'),
                    onPressed: () {
                      setState(() {
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>AlgoApp(timeQuantity: timeQuantity,)), (route) => false);
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ],

      ),
    );
  }
}
