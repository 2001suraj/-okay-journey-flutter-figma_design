// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:figma_design/presentation/widgets/custom_title.dart';
import 'package:figma_design/presentation/widgets/item_list_builder.dart';
import 'package:figma_design/presentation/widgets/top_first_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'Home-screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //first container
            topFirstContainer(context),
            SizedBox(
              height: 20,
            ),
            //Table list
            Text(
              "Table List",
              style: TextStyle(color: Colors.grey),
            ),

            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              height: 210,
              width: double.maxFinite,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.brown),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      //S.n
                      CustomTitle(
                        text: 'S.n.',
                      ),
                      Spacer(),
                      //Name
                      CustomTitle(
                        text: 'Name',
                      ),
                      Spacer(),
                      Spacer(),
                      Spacer(),

                      //Address
                      CustomTitle(
                        text: 'Address',
                      ),
                      Spacer(),

                      //Working Status
                      CustomTitle(
                        text: 'Working Status',
                      ),
                      SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                  //item  list builder
                  itemListBuilder()
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.only(top: 20),
              height: 200,
              width: double.maxFinite,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.brown),
              ),
              child: itemListBuilder(),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.only(top: 20),
              height: 200,
              width: double.maxFinite,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.brown),
              ),
              child: itemListBuilder(),
            ),
            //explore button
            Align(
              alignment: Alignment.bottomRight,
              child: MaterialButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Color.fromRGBO(40, 35, 80, 1),
                minWidth: 90,
                child: Text(
                  'Explore Here',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ))),
    );
  }
}
