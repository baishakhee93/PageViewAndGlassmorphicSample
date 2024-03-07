import 'package:flutter/material.dart';


import 'glassmorphic_card.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        MyBottomRow([
          RowItem('Insomnia', 'assets/images/insomnia.png'),
          RowItem('Migraine Headache', 'assets/images/headache.png'),
          RowItem('Anxiety Disorder', 'assets/images/anxiety.png'),
          RowItem('Dermatitis', 'assets/images/doctors_bag.png'),
        ]),

        // Add more pages as needed
      ],
    );
  }
}

class MyBottomRow extends StatelessWidget {
  final List<RowItem> items;

  MyBottomRow(this.items);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            for (int i = 0; i < 2; i++)
              GlassmorphicCard(
                child: Container(
                  width: 150,
                  height: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                          children: [
                            GlassmorphicCard(
                              child: Container(
                                width: 80,
                                height: 60,
                                child: Center(
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    child: Image.asset(
                                      items[i * 2].imagePath,
                                      color:  Color(0xFFCB0C7E),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Radio(
                              value: true,
                              groupValue: 0,
                              onChanged: (value) {
                                // Handle radio button change
                              },
                            ),]),
                      Text(
                        items[i * 2].title,
                        style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            for (int i = 0; i < 2; i++)
              GlassmorphicCard(
                child: Container(
                  width: 150,
                  height: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align items at the top
                        children: [
                          // GlassmorphicCard for the image
                          GlassmorphicCard(
                            child: Container(
                              width: 80,
                              height: 60,
                              child: Center(
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  child: Image.asset(
                                    items[i * 2 + 1].imagePath,
                                    color:  Color(0xFFCB0C7E),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          // Radio button
                          Radio(
                            value: true,
                            groupValue: 0,
                            onChanged: (value) {
                              // Handle radio button change
                            },
                          ),
                        ],
                      ),
                      Text(
                        items[i * 2 + 1].title,
                        style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),

      ],
    );
  }
}

class RowItem {
  final String title;
  final String imagePath;

  RowItem(this.title, this.imagePath);
}
