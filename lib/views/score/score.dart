import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../category_screen/category_screen.dart';

class Score extends StatelessWidget {
  const Score({super.key, required this.ans});
  final int ans;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new CircularPercentIndicator(
              radius: 80.0,
              lineWidth: 10.0,
              percent: ans / 10,
              center: new Text(
                "${(ans * 10).toString()}%",
              ),
              progressColor: Colors.orange,
            ),
          ],
        ),
        SizedBox(
          height: 80,
        ),
        Text(
          'Correct Answers : $ans',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 20,),
        Text(
          'Wrong Answers : ${10 -ans}',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 30,),
        InkWell(
          child: ElevatedButton(onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => CategoryScreen(),));
          },child: Text('Try Again',style: TextStyle(fontSize: 20),),),
        )
      ]),
    );
  }
}
