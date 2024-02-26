import 'package:flutter/material.dart';
import 'package:practice_21/custome_button.dart/common_widget.dart';
import 'package:practice_21/screen/my_task.dart';
import 'package:practice_21/screen/nav-bar/calendar.dart';
import 'package:practice_21/screen/nav-bar/profile.dart';
import 'package:practice_21/screen/nav-bar/project.dart';

class NavBarPage extends StatefulWidget {
  const NavBarPage({super.key});

  @override
  State<NavBarPage> createState() => _NavBarPageState();
}

class _NavBarPageState extends State<NavBarPage> {
  PageController? pageController;
  @override
  void initState() {
    // TODO: implement initState
    pageController = PageController(
      initialPage: 0,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: Expanded(
        child: Container(
          width: double.infinity,
          child: PageView(
            controller: pageController,
            children: [
              MyTask(),
              Calender(),
              Project(),
              Profile(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsets.symmetric(horizontal: 14.0),
        height: 90,
        color: cardClr,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          InkWell(
            onTap: () {
              pageController!.jumpToPage(0);
              setState(() {});
            },
            child: Column(
              children: [
                const Icon(
                  Icons.task,
                  color: textClrLIght,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "My Task",
                  style: myStyle(
                    20,
                    textClrDark,
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              pageController!.jumpToPage(1);
              setState(() {});
            },
            child: Column(
              children: [
                const Icon(
                  Icons.calendar_month,
                  color: textClrLIght,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  " Calerdar",
                  style: myStyle(
                    20,
                    textClrDark,
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              pageController!.jumpToPage(2);
              setState(() {});
            },
            child: Column(
              children: [
                const Icon(
                  Icons.work,
                  color: textClrLIght,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "My Work",
                  style: myStyle(
                    20,
                    textClrDark,
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              pageController!.jumpToPage(3);
              setState(() {});
            },
            child: Column(
              children: [
                const Icon(
                  Icons.task,
                  color: textClrLIght,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "My Task",
                  style: myStyle(
                    20,
                    textClrDark,
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
