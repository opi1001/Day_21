import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  SharedPreferences? sharePredferences;
  String? value;
  getSaveData() async {
    sharePredferences = await SharedPreferences.getInstance();
    value = sharePredferences!.getString("opi");
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    getSaveData();
    super.initState();
  }

  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Container(
          child: Text(
            "$value",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    ));
  }
}
