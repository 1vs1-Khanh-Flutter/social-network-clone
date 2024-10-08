import 'package:flutter/material.dart';

void main() {
  runApp(const singup());
}

class singup extends StatefulWidget {
  const singup({Key? key}) : super(key: key);

  @override
  State<singup> createState() => _MyAppState();
}

class _MyAppState extends State<singup> {
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
            Image.asset('assets/images/Illustration.png'),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
              child: Text(
                'Tham gia FaceBook',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
