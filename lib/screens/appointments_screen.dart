import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppointmentScreen extends StatelessWidget{
  List imgs = [
    "doctor-1.png"
    "doctor-3.jpeg"
    "doctor-4.jpeg"
    "doctors.png"
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:  Color(0xFF000080),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap:(){
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                      InkWell(
                        onTap:(){
                          
                        },
                        child: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage("images/dokter.jpg"),
                      ),
                      SizedBox(height: 15),
                      Text("Dr. Doctor Name",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text("Therapist",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(113, 140, 183, 248),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(Icons.call,
                              color: Colors.white,
                              size: 25,
                              ),
                            ),
                            SizedBox(width: 20),
                            Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(113, 140, 183, 248),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(CupertinoIcons.chat_bubble_text_fill,
                              color: Colors.white,
                              size: 25,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
             SizedBox(height:20),
                  Container(
                    height: MediaQuery.of(context).size.height/1.5,
                    width: double.infinity,
                    padding: EdgeInsets.only(
                      top: 20,
                      left: 15,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10), 
                      ), 
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          "About Doctor",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500, 
                          ),
                        ),
                        SizedBox(height: 5),
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim ve.",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                        ),),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text("Reviews",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),),
                            SizedBox(width: 10),
                            Icon(Icons.star, color: Colors.amber),
                            Text("4.9",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),),
                            SizedBox(width: 5),
                            Text("(127)",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color:  Colors.black,
                            ),),
                            //Spacer align next widget to the end of row
                            Spacer(),
                            TextButton(onPressed: (){}, 
                            child: Text("See all", 
                            style: TextStyle(
                              color: Colors.lightBlue,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                            ),),
                          ],
                        ),
                        SizedBox(
                          height: 160,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.all(10),
                                padding: EdgeInsets.symmetric(vertical: 5),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 4,
                                      spreadRadius: 2,
                                    ),
                                  ],
                                ),
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width/1.4,
                                  child: Column(children: [
                                    ListTile(leading: CircleAvatar(
                                      radius: 25,
                                      // backgroundImage: AssetImage("images/${imgs[index]}"),
                                    ),
                                    title: Text(
                                      "Dr. Doctor Name",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    subtitle: Text("1 day ago"),
                                    trailing: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        Text(
                                          "4.9",
                                          style: TextStyle(
                                            color: Colors.black54,
                                          ),
                                        ),
                                      ],
                                    ),
                                    ),
                                    SizedBox(height: 5),
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal:10),
                                      child: Text(
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        "Thank you so much to Dr. Lee. He is a great and professional doctor",
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                      ),
                                      ),
                                  ],),
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Location",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        ListTile(
                          leading: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Color(0xFFF0EEFA),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.location_city,
                            color: Colors.lightBlue,
                            size: 30),
                          ),
                          title: Text(
                            "Bandung, Mereun Healthcare",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text("address line of the medical center, "),
                        ),
                      ],
                    ),
                  ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(15),
        height: 130,
        decoration: BoxDecoration(color: Colors.white,
        boxShadow: [BoxShadow(
          color: Colors.black12,
          blurRadius: 4,
          spreadRadius: 2,
        ),],),
        child: Column(
          children: [Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text("Consultation Price",
            style: TextStyle(
              color: Colors.black54),),
            Text("Rp. 300.000",style: TextStyle(fontSize: 20, color: Colors.black54, fontWeight: FontWeight.bold),),
            ],
          ),
              SizedBox(height: 15),
              InkWell(onTap: (){},
              child: Container(
                width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(vertical: 18),
              decoration: BoxDecoration(
                color: Color(0xFF000080),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "Book Appointment",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              ),),
          ],
        ),
      ),

    );
  }
}