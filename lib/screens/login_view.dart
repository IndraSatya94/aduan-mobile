import 'package:flutter/material.dart';
import '../constants.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aduan Gangguan'),
      ),
      body: Container(
        color: ColorPallete.primaryColor,
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  _iconLogin(),
                  // _titleDescription(),
                  _textField(),
                  _buildButton(context),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget _iconLogin() {
  return Image.asset(
    "assets/images/logo-bolmong.png",
    width: 50.0,
    height: 50.0,
  );
}

// Widget _titleDescription() {
//   return Column(
//     children: <Widget>[
//       Padding(
//         padding: EdgeInsets.only(top: 12.0),
//       ),
//       Text(
//         "Lorem ipsum dolor",
//         style: TextStyle(
//           fontSize: 12.0,
//           color: Colors.white,
//         ),
//         textAlign: TextAlign.center,
//       ),
//     ],
//   );
// }

Widget _textField() {
  return Column(
    children: <Widget>[
      Align(
        alignment: Alignment.centerLeft,
        child: Container(
          margin: const EdgeInsets.only(top: 50.0),
          child: Text(
            "SIGN IN",
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 12.0),
      ),
      TextFormField(
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.people, color: Colors.white38),
          hintText: 'Username',
          hintStyle: TextStyle(
              height: 1.6,
              fontSize: 15.0,
              color: Colors.white24,
              fontWeight: FontWeight.bold),
          border: UnderlineInputBorder(),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: ColorPallete.underLineTextField,
            ),
          ),
        ),
        style: TextStyle(color: Colors.white),
      ),
      TextFormField(
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.lock, color: Colors.white38),
          hintText: 'Password',
          hintStyle: TextStyle(
              height: 1.6,
              fontSize: 15.0,
              color: Colors.white24,
              fontWeight: FontWeight.bold),
          border: UnderlineInputBorder(),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: ColorPallete.underLineTextField,
            ),
          ),
        ),
        style: TextStyle(color: Colors.white),
        obscureText: true,
        autofocus: false,
      ),
    ],
  );
}

Widget _buildButton(BuildContext context) {
  return Column(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 16.0),
      ),
      // InkWell(
      //   child: Container(
      //     padding: EdgeInsets.symmetric(vertical: 8.0),
      //     width: double.infinity,
      //     child: Text(
      //       'Login',
      //       style: TextStyle(color: ColorPallete.primaryColor),
      //       textAlign: TextAlign.center,
      //     ),
      //     decoration: BoxDecoration(
      //       color: Colors.white,
      //       borderRadius: BorderRadius.circular(30.0),
      //     ),
      //   ),
      // ),
      Padding(
        padding: EdgeInsets.only(top: 16.0),
      ),
      ButtonTheme(
          minWidth: double.infinity,
          child: RaisedButton(
            color: Colors.white,
            child: Text(
              'Login',
              style: TextStyle(color: Colors.black),
            ),
            onPressed: () {
              Navigator.pushNamed(context, "/");
            },
          ))
    ],
  );
}
