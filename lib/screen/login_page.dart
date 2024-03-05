import 'package:flutter/material.dart';
import 'package:practice_21/custome_button.dart/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Loginpage extends StatefulWidget {
  Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  SharedPreferences? sharePredferences;
  TextEditingController nameController = TextEditingController();

  checkUser() async {
    sharePredferences = await SharedPreferences.getInstance();
    var Data = sharePredferences!.getString("opi");
  }
}

@override
Widget build(BuildContext context) {
  return SafeArea(
    child: Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nameController,
            ),
            MaterialButton(
              onPressed: () async {
                sharePredferences = await SharedPreferences.getInstance();
                sharePredferences!
                    .setString("opi", nameController.text.toString());

                sharePredferences!.getString("opi");
                print("our value is ${sharePredferences!.getString("opi")}");
              },
              child: Text("Sava data"),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Text("Go to home"),
            ),
          ],
        ),
      ),
    ),
  );
}
  





// import 'package:flutter/material.dart';
// import 'package:practice_21/custome_button.dart/home_page.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class LoginPage extends StatelessWidget {
//   const LoginPage({super.key});

//   SharedPreferences? sharePredferences;

//   TextEditingController nameController = TextEditingController();

//   checkUser() async {
//     sharePredferences = await SharedPreferences.getInstance();
//     var Data = sharePredferences!.getString("opi");
//   }
// }

// @override
// Widget build(BuildContext context) {
//   return SafeArea(
//       child: Scaffold(
//     backgroundColor: Colors.white,
//     body: Container(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           TextField(
//             controller: nameController,
//           ),
//           MaterialButton(
//             onPressed: () async {
//               sharePredferences = await SharedPreferences.getInstance();
//               sharePredferences!
//                   .setString("opi", nameController.text.toString());

//               sharePredferences!.getString("opi");
//               print("our value is ${sharePredferences!.getString("opi")}");
//             },
//             child: Text("Sava data"),
//           ),
//           MaterialButton(
//             onPressed: () {
//               Navigator.of(context)
//                   .push(MaterialPageRoute(builder: (context) => HomePage()));
//             },
//             child: Text("Go to home "),
//           ),
//         ],
//       ),
//     ),
//   ));
// }

 







// import 'package:flutter/material.dart';
// import 'package:practice_21/custome_button.dart/home_page.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class LoginPage extends StatelessWidget {
//   LoginPage({super.key});

//   @override
//   SharedPreferences? sharePredferences;
//   TextEditingController nameController = TextEditingController();

//   checkUser() async {
//     sharePredferences = await SharedPreferences.getInstance();
//     var Data = sharePredferences!.getString("opi");
  
   
//     }
//   }

//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//       backgroundColor: Colors.white,
//       body: Container(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               controller: nameController,
//             ),
//             MaterialButton(
//               onPressed: () async {
//                 sharePredferences = await SharedPreferences.getInstance();
//                 sharePredferences!
//                     .setString("opi", nameController.text.toString());

//                 sharePredferences!.getString("opi");
//                 print("our value is ${sharePredferences!.getString("opi")}");
//               },
//               child: Text("Sava data"),
//             ),
//             MaterialButton(
//               onPressed: () {
//                 Navigator.of(context)
//                     .push(MaterialPageRoute(builder: (context) => HomePage()));
//               },
//               child: Text("Go to home "),
//             ),
//           ],
//         ),
//       ),
//     ));
  
//   }

