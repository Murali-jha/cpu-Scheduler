import 'package:flutter/material.dart';
import 'package:scheduling/drawer.dart';
import 'AlgoApp.dart';
import 'help.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => AlgoApp()));
        },
        child: Icon(Icons.point_of_sale,color: Colors.white,),
        backgroundColor: Colors.blue,
      ),
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20.0)
          ),
        ),
        title: Text("Schedulo",style: TextStyle(fontSize: 25.0),),
        centerTitle: true,
        actions: [
          IconButton(icon: Icon(Icons.help_outline), onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HelpApp()));
          })
        ],
      ),
      drawer: DrawerAppBar(),
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
                    child: Text("What is Schedulo ?",style: TextStyle(color: Colors.white,fontSize: 20.0),), shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
                ),
              ),
              ListTile(
                title: Text("Back in the day, primitive operating systems only allowed to execute a process at a time. The running process alternated time in CPU and time in I/O. The OS provided the process with the basic I/O routines, as these must be protected. Processes started and ended in CPU time. The time that a process spends in CPU is called burst.",
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              ListTile(
                title: Text("In any case, the I/O system is much slower than the CPU, so, if we have only one process, the CPU will be idle most of the time. It was decided that several processes could be executed at a time, alternating in the use of CPU and I/O system. This idea not only required changes in the OS, but also in the hardware. Dividing the memory in several parts, putting a process in each part and making the CPU commute from process to process is what we call multi-programming.",
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              ListTile(
                title: Text("The goal of multi-programming is to improve the performance by using the CPU more efficiently. A shared-time OS needs to change the running process every now and then, letting all the processes use both the CPU and the I/O system. The problem now is to decide which process should be running in each moment. In the simplest case, a process can be sent out of the CPU when it finishes or it needs to use the I/O system. However, the OS may decide to replace the running process in other occasions. Choosing the processes that are candidate for CPU execution and choosing which candidate should take the CPU is called CPU Scheduling.",
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              SizedBox(height: 10.0,),
              Divider(color: Colors.white,),
              SizedBox(height: 15.0,),
              Center(
                child: OutlineButton(
                    onPressed: null,
                    color: Colors.white,
                    child: Text("The Scheduler",style: TextStyle(color: Colors.white,fontSize: 20.0),), shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
                ),
              ),
              ListTile(
                title: Text("Old operating systems had three schedulers:\n\n\nThe long-term scheduler, which decides which processes have the right to exist.\n\nThe mid-term scheduler, which decides which processes can stay in main memory and which are sent to the swap (disk).\n\nThe short-term scheduler or CPU scheduler, which decides which process in memory has the right to use the CPU.\n\nHowever, in modern operating systems, the long-term scheduler is practically absent, and the mid-term scheduler has practically been replaced by virtual memory.",
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              SizedBox(height: 10.0,),
              Divider(color: Colors.white,),
              SizedBox(height: 15.0,),
              Center(
                child: OutlineButton(
                    onPressed: null,
                    color: Colors.white,
                    child: Text("The CPU Scheduler",style: TextStyle(color: Colors.white,fontSize: 20.0),), shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
                ),
              ),
              ListTile(
                title: Text("The OS moves from a process to another by saving the state of the process that is in CPU in the PCB of that process and loading the state of the new process from its PCB. This operation is called context switch and takes some time. If the CPU time was short, the process would not really execute, as time would be practically spent in doing context switch.\n\nOld operating systems such as MS-DOS could remove processes from the CPU only if they finished or if they needed to use the I/O system. Other processes could not use the CPU if the current process did not leave. This kind of scheduling is called non-preemptive or co-operative. Not only this type of scheduling was unfair, but also it could block the computer if the process in CPU had a problem. In modern systems, the OS can remove processes from the CPU when they decide. This type of scheduling is called preemptive.\n\n\nIn this app we will study several scheduling algorithms, some preemptive and some non-preemptive:",
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              ListTile(
                title: Text("First Come First Serve(FCFS)",
                  style: TextStyle(fontSize: 18.0),
                ),
                leading: Icon(Icons.arrow_forward_ios_outlined),
              ),
              ListTile(
                title: Text("Shortest Job First(SJF)",
                  style: TextStyle(fontSize: 18.0),
                ),
                leading: Icon(Icons.arrow_forward_ios_outlined),
              ),
              ListTile(
                title: Text("Round Robin(RR)",
                  style: TextStyle(fontSize: 18.0),
                ),
                leading: Icon(Icons.arrow_forward_ios_outlined),
              ),
              ListTile(
                title: Text("Random Scheduling(Random)",
                  style: TextStyle(fontSize: 18.0),
                ),
                leading: Icon(Icons.arrow_forward_ios_outlined),
              ),
              ListTile(
                title: Text("Nevertheless, modern operating systems may apply a combination of some of them in a Multiple Queue scheduling system.",
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              ListTile(
                title: Text("Send your question at devcafe.developers@gmail.com",
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
