// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

SizedBox topFirstContainer(BuildContext context) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * 0.1,
    width: double.maxFinite,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            //image
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/employee.webp'),
            ),
            SizedBox(
              width: 10,
            ),
            // name
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Operator",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Sita Nepali",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
          ]),
          //Notification badge
          Stack(
            children: [
              SizedBox(
                height: 70,
                width: 40,
              ),
              Positioned(
                top: 20,
                child: Icon(
                  Icons.notifications_none_outlined,
                  color: Color.fromRGBO(40, 35, 80, 1),
                  size: 30,
                ),
              ),
              Positioned(
                left: 0,
                top: 25,
                right: 0,
                child: CircleAvatar(
                  radius: 4,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 3,
                    backgroundColor: Color.fromRGBO(40, 35, 80, 1),
                  ),
                ),
              ),
              Positioned(
                // left: 0,
                top: 10,
                right: 10,
                child: CircleAvatar(
                  radius: 8,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 7,
                    backgroundColor: Color.fromRGBO(40, 35, 80, 1),
                    child: Text(
                      '2',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}
