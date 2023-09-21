import 'package:flutter/material.dart';

import 'mydrwar.dart';

class aa extends StatelessWidget {
  const aa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController n1 = TextEditingController();
    TextEditingController n2 = TextEditingController();

    TextEditingController r = TextEditingController();

    return Scaffold(
      body: ListView(
        children: [
          MyTextfild("enput n1:", "first number", n1),
          MyTextfild("enput n2", "secound", n2),
          MyTextfild("result:", "result", r),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Bbutton(
                r,
                n1,
                n2,
                "sum",
                () {
                  r.text = (int.parse(n1.text) + int.parse(n2.text)).toString();
                },
              ),
              Bbutton(
                r,
                n1,
                n2,
                "sub",
                () {
                  r.text = (int.parse(n1.text) - int.parse(n2.text)).toString();
                },
              ),
              Bbutton(
                r,
                n1,
                n2,
                "mul",
                () {
                  r.text = (int.parse(n1.text) * int.parse(n2.text)).toString();
                },
              ),
              Bbutton(
                r,
                n1,
                n2,
                "div",
                () {
                  r.text = (int.parse(n1.text) / int.parse(n2.text)).toString();
                },
              ),
            ],
          )
        ],
      ),
    );
  }

  Padding Bbutton(TextEditingController r, TextEditingController n1,
      TextEditingController n2, String tex, f) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(onPressed: f, child: Text(tex)),
    );
  }

  Padding MyTextfild(String hint, String fir, controler) {
    return Padding(
        padding: EdgeInsets.all(5),
        child: TextField(
          controller: controler,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              fillColor: Color.fromARGB(255, 224, 142, 142),
              filled: true,
              hintText: hint,
              labelText: fir,
              prefixIcon: Icon(Icons.numbers)),
        ));
  }
}
