import 'package:flutter/material.dart';
import 'a.dart';
import 'login.dart';
import 'mydrwar.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    ;
    return SafeArea(
        child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 226, 173, 173),
        appBar: AppBar(
          backgroundColor: Colors.amber,
          actions: [
            IconButton(onPressed: () => print("ddd"), icon: Icon(Icons.menu)),
          ],
          title: Text("    الصفحه الرئيسيه "),
        ),
        body: LoginPage(),
        drawer: Mydrawar(),
      ),
    ));
  }
}
