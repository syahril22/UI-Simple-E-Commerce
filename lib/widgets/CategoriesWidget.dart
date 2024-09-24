import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  CategoriesWidget({super.key});

  List<String> myTitleCategory = [
    'Dasi idn',
    'Seaptu idn',
    'Seragam 1 idn',
    'Seragam 2 idn'
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 0; i < myTitleCategory.length; i++)
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Image.asset(
                    'images/${i + 1}.jpeg',
                    width: 40,
                    height: 40,
                  ),
                  Text(
                    myTitleCategory[i],
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Color(0xFF4C53A5)),
                  )
                ],
              ),
            )
        ],
      ),
    );
  }
}
