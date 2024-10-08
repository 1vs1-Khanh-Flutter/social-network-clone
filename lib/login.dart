import 'package:flutter/material.dart';
import 'package:hello/singup.dart';

void main() {
  runApp(const login());
}

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _MyAppState();
}

class _MyAppState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              Image.asset(
                'assets/images/Background.png',
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(35, 10, 35, 2),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      style: TextStyle(fontSize: 25, color: Colors.black),
                      decoration: InputDecoration(
                        labelText: "Email/Sdt",
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(35, 0, 35, 0),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      style: TextStyle(fontSize: 25, color: Colors.black),
                      decoration: InputDecoration(
                        labelText: "Mật Khẩu",
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 30,
                ),
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blue,
                ),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Đăng Nhập',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    )),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Quên Mật Khẩu ?',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                      ),
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/images/rachngang.png'),
                  Text('Hoặc',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      )),
                  Image.asset('assets/images/rachngang.png'),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 30,
                ),
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.green,
                ),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => singup()),
                      );
                    },
                    child: Text(
                      'Tạo tài khoản Facebook mới',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
