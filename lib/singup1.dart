import 'package:flutter/material.dart';

void main() {
  runApp(const singup1());
}

class singup1 extends StatefulWidget {
  const singup1({Key? key}) : super(key: key);

  @override
  State<singup1> createState() => _singup1();
}

class _singup1 extends State<singup1> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            AppBar(
              title: Text('Tạo Tài Khoản'),
              titleSpacing: 2.0,
              backgroundColor: Colors.white,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
              child: Text(
                'Whay’s your name?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
            Row(children: [Container(child: TextField(),)],)
            // TextFormField(),
          ],
        ),
      ),
    );
  }
}
