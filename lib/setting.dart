import 'dart:html';

import 'package:assign_3/history.dart';

import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Ecom App UI")),
          actions: [
            Icon(Icons.notifications),
            Padding(
              padding: EdgeInsets.only(left: 20),
            )
          ],
          backgroundColor: Colors.black87,
        ),
        body: ListView(
          children: [
            Container(
              width: 100,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(6))),
                      child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3YCZLzlhx38nIo-f9-czDRyZEnxl8VoTmLA&usqp=CAU",
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "User",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text("abc@gmail.com"),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            "LOGOUT",
                            style: TextStyle(color: Colors.purple),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Container(
              margin: EdgeInsets.all(5),
              color: Colors.grey,
              child: Center(
                child: Text(
                  "ACCOUNT INFORMATION",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Full Name",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 270, top: 6),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Icon(
                                  Icons.edit,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "User",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                        abc("Email", Icons.email, "user@gmail.com",
                            EdgeInsets.only(left: 300, top: 6)),
                        abc("Phone", Icons.phone, "+0987654321",
                            EdgeInsets.only(left: 290, top: 6)),
                        abc(
                            "Address",
                            Icons.location_city,
                            "NEW YORK Random street no2",
                            EdgeInsets.only(left: 280, top: 6)),
                        abc("Gender", Icons.transgender, "Female",
                            EdgeInsets.only(left: 280, top: 6)),
                        abc("Date of Birth", Icons.calendar_view_day,
                            "Nov,06,2000", EdgeInsets.only(left: 250, top: 6))
                      ],
                    ),
                  )),
            ),
            SingleChildScrollView(),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                child: Center(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => History()),
                        );
                      },
                      child: Text("History")),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: (Text("Home")),
                ),
              ),
            ),
          ],
        ));
  }
}

Widget abc(var textt, iconn, hintt, leftt) {
  return Column(
    children: [
      Row(
        children: [
          Text(
            textt,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            margin: (leftt),
            child: Align(
              alignment: Alignment.centerRight,
              child: Icon(
                iconn,
              ),
            ),
          ),
        ],
      ),
      Row(
        children: [
          Text(
            hintt,
            style: TextStyle(fontWeight: FontWeight.normal, color: Colors.grey),
          ),
        ],
      ),
    ],
  );
}
