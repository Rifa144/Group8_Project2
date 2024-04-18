import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    // redirect to home page within 4 seconds
    Timer(const Duration(seconds: 4), () {
      Navigator.pushNamed(context, '/home-page');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            Image.asset(
              'pictures/logo.png',
              width: 250,
              height: 250,
            ),
            const SizedBox(height: 1),
            const Text('Recruiting App',style: TextStyle(fontWeight: FontWeight.bold,height: 2, fontSize: 25)),
          ],
        ),
      ),
    );
  }
}
