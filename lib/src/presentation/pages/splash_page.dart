import 'package:flutter/material.dart';
import 'package:template_test/src/presentation/widgets/header.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(
        context,
        headerTitle: "Splash Page",
        headerTitleSize: 30.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text('Splash'),
      ),
    );
  }
}
