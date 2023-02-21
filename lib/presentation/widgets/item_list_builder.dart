// ignore_for_file: prefer_const_constructors

import 'package:figma_design/data/constants/const_data.dart';
import 'package:flutter/material.dart';

ListView itemListBuilder() {
  return ListView.builder(
    shrinkWrap: true,
    primary: false,
    itemCount: Constants().sn.length,
    itemBuilder: (context, index) {
      var data = Constants();
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //sn
          Text(
            data.sn[index].toString(),
          ),
          //Name
          Text(
            data.name.toString(),
          ),
          //address
          Text(
            data.address.toString(),
          ),
          //status
          Container(
            width: 90,
            height: 30,
            margin: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: data.status[index] == 'Operating'
                    ? Colors.green
                    : Colors.red),
            child: Center(
              child: Text(
                data.status[index].toString(),
                style: TextStyle(fontSize: 12),
              ),
            ),
          ),
        ],
      );
    },
  );
}
