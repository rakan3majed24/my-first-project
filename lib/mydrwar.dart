import 'package:flutter/material.dart';
import 'package:flutter_application_1/hom.dart';

import 'a.dart';
import 'b.dart';

class Mydrawar extends StatelessWidget {
  const Mydrawar({super.key});

  @override
  Widget build(BuildContext context) {
    Text t = Text("الرئسيه",
        textDirection: TextDirection.rtl,
        style: TextStyle(
            decoration: TextDecoration.none,
            fontWeight: FontWeight.bold,
            fontSize: 15));
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.start,
        //  crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            color: Color.fromARGB(255, 230, 179, 27),
          ),
          ListTile(
            title: Text("الرئيسية",
                textDirection: TextDirection.rtl,
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    decoration: TextDecoration.none,
                    backgroundColor: Color.fromARGB(255, 230, 230, 183),
                    fontWeight: FontWeight.bold,
                    fontSize: 25)),
            leading: Icon(Icons.home,
                color: Color.fromARGB(66, 126, 16, 16), size: 25),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return MyApp();
              }));
            },
          ),
          ListTile(
            title: Text("تسجيل الدخول",
                textDirection: TextDirection.rtl,
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    decoration: TextDecoration.none,
                    backgroundColor: Color.fromARGB(255, 230, 230, 183),
                    fontWeight: FontWeight.bold,
                    fontSize: 25)),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return MyApp();
              }));
            },
          ),
          ListTile(
            title: Text("الحاسبه1",
                textDirection: TextDirection.rtl,
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    decoration: TextDecoration.none,
                    backgroundColor: Color.fromARGB(255, 230, 230, 183),
                    fontWeight: FontWeight.bold,
                    fontSize: 25)),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return aa();
              }));
            },
          ),
          ListTile(
            title: Text("الحاسبه2",
                textDirection: TextDirection.rtl,
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    decoration: TextDecoration.none,
                    backgroundColor: Color.fromARGB(255, 230, 230, 183),
                    fontWeight: FontWeight.bold,
                    fontSize: 25)),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return CalcApp();
              }));
            },
          ),
          ListTile(
            title: Text("/",
                textDirection: TextDirection.rtl,
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    decoration: TextDecoration.none,
                    backgroundColor: Color.fromARGB(255, 230, 230, 183),
                    fontWeight: FontWeight.bold,
                    fontSize: 25)),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return MyApp();
              }));
            },
          ),
          ListTile(
            title: Text("الاعدادات",
                textDirection: TextDirection.rtl,
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    decoration: TextDecoration.none,
                    backgroundColor: Color.fromARGB(255, 230, 230, 183),
                    fontWeight: FontWeight.bold,
                    fontSize: 25)),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return MyApp();
              }));
            },
          ),
          Text("الاعدادات",
              textDirection: TextDirection.rtl,
              style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  decoration: TextDecoration.none,
                  backgroundColor: Color.fromARGB(255, 230, 230, 183),
                  fontWeight: FontWeight.bold,
                  fontSize: 25)),
          ListTile(
            title: Text("خروج",
                textDirection: TextDirection.rtl,
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    decoration: TextDecoration.none,
                    backgroundColor: Color.fromARGB(255, 230, 230, 183),
                    fontWeight: FontWeight.bold,
                    fontSize: 25)),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
