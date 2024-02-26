import 'package:flutter/material.dart';
import 'package:practice_21/custome_button.dart/common_widget.dart';

class MyTask extends StatelessWidget {
  const MyTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: cardClr,
        leading: Padding(
          padding: EdgeInsets.only(left: 12, top: 4, bottom: 4),
          child: CircleAvatar(
            maxRadius: 15,
            backgroundColor: Colors.grey,
          ),
        ),
        title: Row(
          children: [
            Text(
              "Opiiii Team ",
              style: myStyle(16, textClrDark),
            ),
            Icon(Icons.keyboard_arrow_down_sharp),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Project Task",
              style: myStyle(16, textClrLIght),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 16),
              height: 92,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  taskCard(clr: Colors.purple, value: "5", tittle: "Ongoing"),
                  taskCard(
                      clr: Colors.red, value: "7", tittle: "Under\nReview"),
                  taskCard(clr: Colors.teal, value: "9", tittle: "Uncommon"),
                  taskCard(clr: Colors.green, value: "9", tittle: "Uncommon"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                " My Task",
                style: myStyle(16, textClrLIght),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container taskCard({String? value, String? tittle, Color? clr}) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: cardClr,
      ),
      height: 60,
      width: 130,
      child: Row(
        children: [
          Container(
            height: 32,
            width: 4,
            color: clr,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$value",
                  style: myStyle(16, textClrLIght),
                ),
                SizedBox(
                  width: 17,
                ),
                Text(
                  "$tittle",
                  style: myStyle(16, textClrLIght),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
