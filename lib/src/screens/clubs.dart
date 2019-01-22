import 'package:flutter/material.dart';
import '../supporting_files//colors.dart';

AppColors c = AppColors();

final TextStyle listTileStyle = TextStyle(color: c.black);
final TextStyle sectionHeaderTextStyle =
    TextStyle(color: c.black, fontSize: 16.0);
final Divider sectionDivider = Divider(
  color: c.black,
  height: 30.0,
);
final Padding containerBottomPadding =
    Padding(padding: EdgeInsets.only(bottom: 6.17));

//clubs that users are currently in
Widget currentlyIn(String clubName) {
  return FractionallySizedBox(
    widthFactor: 0.89,
    child: Padding(
      padding: containerBottomPadding.padding,
      child: Container(
          decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: c.lighterGrey)),
              color: c.maxWhite),
          height: 49.83,
          child: ListTile(
            title: Text(
              "$clubName",
              style: listTileStyle,
            ),
            onTap: () {},
            trailing: GestureDetector(child: Icon(Icons.close)),
          )),
    ),
  );
}

//all the remaining clubs
Widget allClubs(String clubName) {
  return FractionallySizedBox(
    widthFactor: 0.89,
    child: Padding(
      padding: containerBottomPadding.padding,
      child: Container(
          decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: c.lighterGrey)),
              color: c.maxWhite),
          height: 49.83,
          child: ListTile(
            title: Text(
              "$clubName",
              style: listTileStyle,
            ),
            onTap: () {},
            trailing: GestureDetector(
              child: Icon(
                Icons.add,
                color: c.black,
              ),
              onTap: () => print("press icon"),
            ),
          )),
    ),
  );
}

class Clubs extends StatefulWidget {
  @override
  _ClubsState createState() => _ClubsState();
}

//TODO gotta make the widgets interact-able using a gesture detector
//TODO tap on plus icon to add club to Currently in
//TODO tap on cross to delete from currently in array
class _ClubsState extends State<Clubs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                  padding:
                      const EdgeInsets.only(top: 29.0, left: 29.0, right: 29.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: Text(
                        "Currently In",
                        style: sectionHeaderTextStyle,
                      )),
                      Text(
                        "3/5",
                        style: sectionHeaderTextStyle,
                      )
                    ],
                  )),
              FractionallySizedBox(widthFactor: 0.9, child: sectionDivider),
              currentlyIn("Computer Science"),
              currentlyIn("Fortnite"),
              currentlyIn("Startups")
            ],
          ),
          Column(
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.only(top: 28.17, left: 29.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: Text(
                        "All",
                        style: sectionHeaderTextStyle,
                      ))
                    ],
                  )),
              FractionallySizedBox(widthFactor: 0.9, child: sectionDivider),
              allClubs("Computer Science"),
              allClubs("Fortnite"),
              allClubs("Startups")
            ],
          )
        ],
      ),
    );
  }
}
