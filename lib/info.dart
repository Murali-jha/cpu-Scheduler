import 'package:flutter/material.dart';

class InfoApp extends StatefulWidget {
  @override
  _InfoAppState createState() => _InfoAppState();
}

class _InfoAppState extends State<InfoApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Scheduling Algorithms",style: TextStyle(color: Colors.white),),
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
                    child: Text("First Come First Serve",style: TextStyle(color: Colors.white,fontSize: 20.0),), shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
                ),
              ),
              ListTile(
                title: Text("In first come first served scheduling algorithm the process that requests the CPU first is allocated first. The implementation of this algorithm is done by FIFO queue. Generally, in this algorithm when a process enters the ready queue, then the tail of queue is linked with the PCB of process. When CPU is free it is allocated to the process at the head of the queue and running process will removed from the queue.\n\nFor Example:",
                style: TextStyle(fontSize: 18.0),
                ),
              ),
              Center(
                child: Image.asset(
                  "assets/Info_table_fcfs.PNG",
                  width: 230.0,
                  height: 150.0,
                ),
              ),
              ListTile(
                title: Text("If the processes arrive in the order P1, P2, P3 and served in the FCFS order then we will get following Gantt chart.      \n               Where Gantt chart tells us, what is the starting and end time of the process.\nAccording to that Gantt chart, 0 millisecond is the waiting time for process P1, and 24 milliseconds for process P2 and 27 milliseconds for process P3. Thus, the average waiting time of the process is (0+24+27)/3 = 17 milliseconds.",
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              Center(
                child: Image.asset(
                  "assets/fcfs_gantt.PNG",
                  width: 400.0,
                  height: 90.0,
                ),
              ),
              Divider(color: Colors.white,),


              //RR

              Center(
                child: OutlineButton(
                    onPressed: null,
                    color: Colors.white,
                    child: Text("Shortest Job First",style: TextStyle(color: Colors.white,fontSize: 20.0),), shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
                ),
              ),
              ListTile(
                title: Text("Shortest Job First (SJF) is an algorithm in which the process having the smallest execution time is chosen for the next execution. This scheduling method can be preemptive or non-preemptive. It significantly reduces the average waiting time for other processes awaiting execution. The full form of SJF is Shortest Job First.\n\nFor Example:",
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              Center(
                child: Image.asset(
                  "assets/SJF.PNG",
                  width: 230.0,
                  height: 150.0,
                ),
              ),
              ListTile(
                title: Text("Gantt chart: \nThe waiting time for the process P1 is 3 milliseconds, P2 is 16 milliseconds, P3 is 9 milliseconds and P4 is 0 milliseconds. Thus, the average waiting time of the processes is (3+16+9+0)/4 = 7 milliseconds",
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              Center(
                child: Image.asset(
                  "assets/fcfs_gantt.PNG",
                  width: 400.0,
                  height: 90.0,
                ),
              ),
              Divider(color: Colors.white,),

              //RR

              Center(
                child: OutlineButton(
                    onPressed: null,
                    color: Colors.white,
                    child: Text("Round Robin",style: TextStyle(color: Colors.white,fontSize: 20.0),), shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
                ),
              ),
              ListTile(
                title: Text("The round robin scheduling algorithm is designed especially for time – sharing systems. It is similar to FCFS scheduling but preemption is added to enable the system to switch between the processes. A time quantum is generally from 10 to 100 milliseconds in length. In that algorithm ready queue is treated as circular queue.\n\nFor example: \nAssume the quantum time 4 milliseconds.",
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              Center(
                child: Image.asset(
                  "assets/RR.PNG",
                  width: 230.0,
                  height: 150.0,
                ),
              ),
              ListTile(
                title: Text("Gantt chart: \nIn the algorithm we calculate the average waiting time for this scheduling. P1 waits for 6 milliseconds, P2 wait for 4 milliseconds and P3 waits for 7 milliseconds. Thus, average waiting time of the processes is 17/3 = 5.66 milliseconds.",style: TextStyle(fontSize: 18.0),
                ),
              ),
              Center(
                child: Image.asset(
                  "assets/RR_Gantt.PNG",
                  width: 450.0,
                  height: 90.0,
                ),
              ),
              Divider(color: Colors.white,),


              //Random

              Center(
                child: OutlineButton(
                    onPressed: null,
                    color: Colors.white,
                    child: Text("Random Scheduling",style: TextStyle(color: Colors.white,fontSize: 20.0),), shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
                ),
              ),
              ListTile(
                title: Text("In this scheduling algorithm the process will do scheduling itself means there is no role of CPU is here to do scheduling of the process. So, if two CPU have same burst time and different arrival time then process will do the scheduling itself.",
                    style: TextStyle(fontSize: 18.0),
                ),
              ),

              Divider(color: Colors.white,),
            ],
          ),
        ),
      ),
    );
  }
}
