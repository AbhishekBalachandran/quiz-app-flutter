import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz_app_1/utils/databases/database.dart';
import 'package:quiz_app_1/views/score/score.dart';

class QuizScreen extends StatefulWidget {
  QuizScreen({super.key, required this.categoryIndex});
  int categoryIndex;

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int? value;
  int qNo = 0;
  int rAns = 0;
  int qCount = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 30, top: 20, right: 20, bottom: 20),
                      child: Text(
                        'Question ',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 30, top: 20, right: 20, bottom: 20),
                      child: Text(
                        '${qNo + 1}/ 10',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.purple),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.9,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      Database.quiz[widget.categoryIndex][qNo]
                                          ['question'],
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  )),
                            ],
                          ),
                        ]),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: Database
                        .quiz[widget.categoryIndex][qNo]['options'].length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            value = index;
                            value ==
                                    Database.quiz[widget.categoryIndex][qNo]
                                        ['answer']
                                ? rAns++
                                : print(value);
                          });
                        },
                        child: Container(
                          height: 80,
                          width: MediaQuery.of(context).size.width * 0.8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black),
                              color: value == index
                                  ? value ==
                                          Database.quiz[widget.categoryIndex]
                                              [qNo]['answer']
                                      ? Colors.green
                                      : Colors.red
                                  : Colors.transparent
                              ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                Database.quiz[widget.categoryIndex][qNo]
                                    ['options'][index],
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      qNo++;
                      qCount++;
                      value = 5;
                      qCount > 9
                          ? Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Score(ans: rAns),
                              ))
                          : SizedBox();
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 200,
                    color: Colors.purple,
                    child: Center(
                        child: Text(
                      'Next',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    )),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
            value == Database.quiz[widget.categoryIndex][qNo]['answer']
                ? Positioned(
                    left: 0,
                    right: 0,
                    top: 0,
                    bottom: 0,
                    child: Center(
                      child: Lottie.asset(
                          "assets/animations/animation_ln00eob0.json"),
                    ))
                : SizedBox()
          ]),
        ),
      ),
    );
  }
}
