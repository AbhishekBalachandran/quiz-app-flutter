import 'package:flutter/material.dart';
import 'package:quiz_app_1/utils/databases/database.dart';
import 'package:quiz_app_1/views/quiz_screen/quiz_screen.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    int categoryIndex;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Center(
              child: Text(
                'Select the category',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              categoryIndex = index;
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuizScreen(categoryIndex: categoryIndex),
                                  ));
                            });
                          },
                          child: Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width * 0.9,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    Database.category[index],
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  )
                                ]),
                          ),
                        ),
                      ),
                  separatorBuilder: (context, index) => Divider(),
                  itemCount: Database.category.length),
            )
          ],
        ),
      ),
    );
  }
}
