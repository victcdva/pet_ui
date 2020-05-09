import 'package:flutter/material.dart';
import 'package:petui/configuration.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryGreen,
      padding: EdgeInsets.only(top: 50, bottom: 70, left: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('FirstName LastName', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                  Text('Status', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                ],
              )
            ],
          ),
          Column(
            children: drawerItems.map((e) => Row(
              children: [
                Icon(e['icon'], color: Colors.white, size: 30,),
                SizedBox(width: 10,),
                Text(e['title'], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 200),)
              ],
            )).toList(),
          ),
          Row(
            children: [
              Icon(Icons.settings, color: Colors.white,),
              SizedBox(width: 10,),
              Text('Settings', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              SizedBox(width: 10,),
              Container(width: 2, height: 20, color: Colors.white,),
              SizedBox(width: 10,),
              Text('Log out', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            ],
          )
        ],
      ),
    );
  }
}