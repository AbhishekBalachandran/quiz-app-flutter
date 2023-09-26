import 'package:flutter/material.dart';
import 'package:quiz_app_1/views/category_screen/category_screen.dart';

import '../quiz_screen/quiz_screen.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3)).then(
        (value) => Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => CategoryScreen(),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://img.freepik.com/free-vector/hand-drawn-question-mark-pattern_23-2149416617.jpg?w=740&t=st=1695622192~exp=1695622792~hmac=96201a90c2c72393c59e967bb5b334bf0f4357cb0d6d679b9adf2d75c100de0b'),
              fit: BoxFit.cover),
        ),
        child: Center(
            child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://tse2.mm.bing.net/th?id=OIP.FvJifuXRxyMZcuJmd99N9gHaDs&pid=Api&P=0&h=180'))),
        )),
      ),
    );
  }
}
