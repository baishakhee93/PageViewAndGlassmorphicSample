import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ui_design/page1.dart';
import 'package:ui_design/page2.dart';
import 'package:ui_design/page3.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController pageController = PageController();
  int currentPage = 0;
  final _controller=PageController();
  List<Widget> pages = [Page1(), Page2(), Page3()]; // Add more pages as needed

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page?.round() ?? 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          // Explicitly set the card color in the theme
          cardColor: Colors.white,
        ),
        home: Scaffold(
          body: SingleChildScrollView(
            child: Stack(
              children: [
                // Background Image
                Image.asset(
                  'assets/images/background_design.png',
                  fit: BoxFit.cover,
                ),
                // Other Widgets on top of the background
                Center(
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 40),

                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 20,
                                  child: Icon(
                                    Icons.person,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  backgroundColor: Colors.grey,
                                ),
                                SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Welcome',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    ),
                                    Text(
                                      'Your Name',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                // Right side: Settings icon
                                Icon(
                                  Icons.settings,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            // Search Card
                            Card(
                              color: Colors.white,
                              elevation: 10,

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10,right: 10),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: 'Search Doctor.',
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Icon(Icons.search),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Appointment Booking',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),

                            Card(
                              elevation: 100,
                              margin: EdgeInsets.only(left: 20, right: 20),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Container(
                                padding: EdgeInsets.all(20),
                                child: Column(
                                  children: [
                                    Card(
                                      color: Colors.white,
                                      elevation: 10,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(60),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: TextField(
                                          decoration: InputDecoration(
                                            hintText: 'Enter Name',
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Card(
                                      color: Colors.white,
                                      elevation: 10,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(60),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: TextField(
                                          decoration: InputDecoration(
                                            hintText: 'Choose Date & Time',
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Card(
                                      color: Colors.white,
                                      elevation: 10,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(60),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: TextField(
                                          decoration: InputDecoration(
                                            hintText: 'Choose Problem',
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Card(
                                      color: Colors.white,
                                      elevation: 10,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(60),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: TextField(
                                          decoration: InputDecoration(
                                            hintText: 'Choose Test',
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Card(
                                      color: Colors.white,
                                      elevation: 10,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(60),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: TextField(
                                          decoration: InputDecoration(
                                            hintText: 'Choose Consultation',
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    ElevatedButton(
                                      onPressed: () {
                                        print('ElevatedButton pressed!');
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: Color(0xFFE838A1),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(60),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text(
                                          'Book Appointment',
                                          style: TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                "Choose Problems",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                                ),
                              ),
                            )
                            ,
                            SizedBox(
                              height: 280, // Set the height based on your content
                              child: PageView(
                                controller: _controller,
                                children: pages
                              ),

                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SmoothPageIndicator(controller: _controller,
                                  count: pages.length,
                                  effect: WormEffect(
                                      activeDotColor: Colors.white,
                                      dotColor: Colors.white.withOpacity(0.5),
                                      dotHeight: 20,
                                      dotWidth: 20

                                  ),
                                )
                              ]
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

}
