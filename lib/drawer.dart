import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:launch_review/launch_review.dart';
import 'package:scheduling/info.dart';
import 'package:share/share.dart';
import 'help.dart';


class DrawerAppBar extends StatefulWidget {
  @override
  _DrawerAppBarState createState() => _DrawerAppBarState();
}

class _DrawerAppBarState extends State<DrawerAppBar> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260.0,
      child: Drawer(
        child: Container(
          child: ListView(
            children: [
              SizedBox(
                height: 10.0,
              ),
              Center(
                child: Image.asset(
                  "assets/imagetext.png",
                  width: 120.0,
                  height: 120.0,
                  ),
                ),
              Center(
                child: Text(
                  "Schedulo",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 23.0,
                      ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Divider(
                color: Colors.white,
              ),
              SizedBox(
                height: 20.0,
              ),
              ListTile(
                onTap: () {
                  final RenderBox box = context.findRenderObject();
                  Share.share('Hey I am enjoying using CPU Schedular app.To download this app use below link. \n https://play.google.com/store/apps/details?id=com.muralijha.app_scheduling');
                },
                leading: Icon(
                  Icons.share
                ),
                title: Text(
                  "Share",
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ListTile(
                onTap: () {
                  return LaunchReview.launch(
                    androidAppId: "com.muralijha.app_scheduling",
                  );
                },
                leading: Icon(
                  Icons.star_rate_outlined
                ),
                title: Text(
                  "Rate the app",
                )
              ),
              SizedBox(
                height: 10.0,
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return HelpApp();
                  }));
                },
                leading: Icon(
                  Icons.help_outline_sharp
                ),
                title: Text(
                  "Help",
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return InfoApp();
                  }));
                },
                leading: Icon(
                    Icons.info_rounded
                ),
                title: Text(
                  "About",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
