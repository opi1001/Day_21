import 'dart:math';
import 'package:flutter/material.dart';
import 'package:practice_21/custome_button.dart/common_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -140,
            child: Transform.rotate(
              angle: pi / 5,
              child: Container(
                height: 400,
                width: 480,
                decoration: BoxDecoration(
                    color: Color(0xff8E8E93),
                    borderRadius: BorderRadius.circular(40)
                    // color: Colors.amber,
                    ),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 0, 16),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Update Progress Your Work For The Team ",
                      style: myStyle(36, textClrLIght, FontWeight.w700),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 32),
                      child: SvgPicture.network(
                          "https://hips.hearstapps.com/hmg-prod/images/nature-quotes-landscape-1648265299.jpg?crop=0.676xw:1.00xh;0.148xw,0&resize=640:*"),
                    ),
                    CustomButton(
                      isOutline: true,
                      onTap: () {},
                      tittle: "Sign Up",
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    CustomButton(
                      onTap: () {},
                      tittle: "Log In",
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(top: 50.0),
                        height: 6,
                        width: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: textClrLIght,
                        ),
                      ),
                    ),
                  ]))
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key, required this.tittle, required this.onTap, this.isOutline});

  String tittle;
  VoidCallback onTap;
  bool? isOutline;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      color: isOutline == null ? buttonClr : backroundClr,
      height: 56,
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28),
          side: BorderSide(
            color: isOutline == null ? buttonClr : textClrLIght,
          )),
      child: Text(
        "$tittle",
        style: myStyle(
          16,
          textClrLIght,
        ),
      ),
    );
  }
}
