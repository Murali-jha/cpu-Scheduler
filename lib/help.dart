import 'package:flutter/material.dart';

class HelpApp extends StatefulWidget {
  @override
  _HelpAppState createState() => _HelpAppState();
}

class _HelpAppState extends State<HelpApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("How to use this app?",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20.0)
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(15.0),
        padding: EdgeInsets.all(6.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: OutlineButton(
                    onPressed: null,
                    color: Colors.white,
                    child: Text("Instructions",style: TextStyle(color: Colors.white,fontSize: 20.0),), shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
                ),
              ),
              ListTile(
                title: Text("You can find different CPU Scheduling processes. ",style: TextStyle(fontSize: 17.0),),
                leading: Icon(Icons.double_arrow_sharp,size: 32.0,),
              ),
              Divider(color: Colors.white,),
              ListTile(
                title: Text("Try checking with the existing or You can create your own Process array by selecting create your own array.",style: TextStyle(fontSize: 17.0),),
                leading: Icon(Icons.double_arrow_sharp,size: 32.0,),
              ),
              Divider(color: Colors.white,),
              ListTile(
                title: Text("The format of a Process array is At1, Bt1; At2, Bt2; At3, Bt3 …. example:  4,5; 6,4; 0,3; 6,2; 5,4\n(Note: At1 < At2 < At3….)\n\ni.e.,",style: TextStyle(fontSize: 17.0),),
                leading: Icon(Icons.double_arrow_sharp,size: 32.0,),
              ),
              SizedBox(height: 10.0,),
              Center(
                child: Image.asset(
                  "assets/help.PNG",
                  width: 450.0,
                  height: 150.0,
                ),
              ),
              SizedBox(height: 10.0,),
              Divider(color: Colors.white,),
              ListTile(
                title: Text("For Round Robin Select the Time icon at the top right corner to set the Time Quantum, by default it will work as First Come First Serve"),
                leading: Icon(Icons.double_arrow_sharp,size: 32.0,),
              ),
              Divider(color: Colors.white,),
              ListTile(
                title: Text("Now, choose the CPU Scheduling process which you want to find from FCFS, SJF, RR, Random which are First come first serve, Shortest Job first, Round Robin and Random CPU Scheduling algorithms respectively."),
                leading: Icon(Icons.double_arrow_sharp,size: 32.0,),
              ),
              Divider(color: Colors.white,),
              ListTile(
                title: Text("Then Gantt chart and detailed information of each Process is displayed below as an output."),
                leading: Icon(Icons.double_arrow_sharp,size: 32.0,),
              ),
              Divider(color: Colors.white,),

            ],
          ),
        ),
      ),
    );
  }
}
