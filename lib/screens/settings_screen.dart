import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Padding(padding: EdgeInsets.only(top: 50, left: 20, right:20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Settings",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              child: Icon(Icons.person_2_rounded),
            ),
            title: Text(
              "Berliana Ramadhani", 
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),),
            subtitle: Text("Profile"),
          ),
          Divider(height: 50),
          ListTile(
            onTap: (){},
            leading: Container(
              padding: EdgeInsets.all(19),
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                shape: BoxShape.circle,
              ),
              child: Icon(CupertinoIcons.person,
              color: Colors.blue,
              size: 15),
            ),
            title: Text("Profile Edit",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20, 
            ),),
            trailing: Icon(Icons.arrow_back_ios_rounded),
          ),
          SizedBox(height: 20),
          ListTile(
            onTap: (){},
            leading: Container(
              padding: EdgeInsets.all(19),
              decoration: BoxDecoration(
                color: Colors.purple.shade100,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.language,
              color: Colors.deepPurple,
              size: 15),
            ),
            title: Text("Language",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20, 
            ),),
            trailing: Icon(Icons.arrow_back_ios_rounded),
          ),
          SizedBox(height: 20),
          ListTile(
            onTap: (){},
            leading: Container(
              padding: EdgeInsets.all(19),
              decoration: BoxDecoration(
                color: Colors.orange.shade100,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.help_center,
              color: Colors.deepOrange,
              size: 15),
            ),
            title: Text("Help Center",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20, 
            ),),
            trailing: Icon(Icons.arrow_back_ios_rounded),
          ),
          SizedBox(height: 20),
          ListTile(
            onTap: (){},
            leading: Container(
              padding: EdgeInsets.all(19),
              decoration: BoxDecoration(
                color: Colors.red.shade100,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.help_center,
              color: const Color.fromARGB(255, 145, 16, 7),
              size: 15),
            ),
            title: Text("Log Out",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20, 
              color: const Color.fromARGB(255, 145, 16, 7)
            ),),
            trailing: Icon(Icons.arrow_back_ios_rounded),
          ),
        ],
      ),
    );
  }
}