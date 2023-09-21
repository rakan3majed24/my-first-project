import 'package:flutter/material.dart';

import 'e.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('تسجيل الدخول'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'اسم المستخدم',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'كلمة المرور',
              ),
            ),
            SizedBox(height: 24.0),
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
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return ea();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
