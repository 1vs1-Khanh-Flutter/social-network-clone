import 'package:flutter/material.dart';
import 'package:hello/login.dart';
import 'package:hello/singup1.dart';

void main() {
  runApp(const singup());
}

class singup extends StatefulWidget {
  const singup({Key? key}) : super(key: key);

  @override
  State<singup> createState() => _singup();
}

class _singup extends State<singup> {
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
            Padding(
              padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
              child: Text('Tham gia FaceBook',
                  style: TextStyle(fontSize: 20, color: Colors.black,decoration: TextDecoration.none)),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 10),
              child: Text('Chúng tôi sẽ giúp bạn',
                  style: TextStyle(fontSize: 13, color: Colors.grey,decoration: TextDecoration.none)),
            ),
            Text('Tạo một tài khoản mới chỉ trong vài bước đơn giản.',
                style: TextStyle(fontSize: 13, color: Colors.grey,decoration: TextDecoration.none)),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 70,
              ),
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blue,
              ),
              child: TextButton(
                onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => singup1()),
                );},
                child: Text(
                  'Next',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 120, 0, 0),
              child: TextButton(
                  onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => login()),
                  );},
                  child: Text(
                    'Bạn đã có tài khoản?',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
