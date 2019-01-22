import 'package:flutter/material.dart';
import 'package:yime2_mock_ui/src/screens/register.dart';
import '../supporting_files//colors.dart';

AppColors c = AppColors();

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  void navigateToNext() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Register()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 46.0),
            child: Text(
              "YIME",
              style: TextStyle(fontSize: 57.0),
              textAlign: TextAlign.center,
            ),
          ),
          Text(
            "make new friends",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12.0, color: c.darkerGrey),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 45.0),
            child: FractionallySizedBox(
              widthFactor: .6,
              child: Text(
                "anonymously chat with new people on campus",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 103.0, bottom: 33.0),
            child: Text(
              "Login with ...",
              textAlign: TextAlign.center,
            ),
          ),
          Column(
            children: <Widget>[
              Container(
                width: 204.0,
                height: 49.83,
                decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0)),
                    color: c.maxWhite),
                child: FlatButton.icon(
                    onPressed: () {
                      navigateToNext();
                    },
                    icon: Image.asset("images/gg.png"),
                    label: Text("Google")),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 21.17),
            child: Column(
              children: <Widget>[
                Container(
                  width: 204.0,
                  height: 49.83,
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0)),
                      color: c.maxWhite),
                  child: FlatButton.icon(
                      onPressed: () {
                        navigateToNext();
                      },
                      icon: Image.asset("images/sc.png"),
                      label: Text("Snapchat")),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 21.17),
            child: Column(
              children: <Widget>[
                Container(
                  width: 204.0,
                  height: 49.83,
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0)),
                      color: c.maxWhite),
                  child: FlatButton.icon(
                      onPressed: () {
                        navigateToNext();
                      },
                      icon: Image.asset("images/fb.png"),
                      label: Text("Facebook")),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
