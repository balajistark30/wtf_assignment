import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wtf_assignment/widgets/card1.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wtf_assignment/Screens/buy_now.dart';
import 'package:wtf_assignment/Screens/second_screen.dart';

class FirstScreen extends StatefulWidget {
  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Image.asset('assets/arrow.png',height: 50,width: 50,),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => (SecondScreen()),
                  ),
                );
              },
              child: Text(
                'Membership',
                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
            color: Colors.black,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              width: 400,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    height: 250,
                    width: 400,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        )
                      ],
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://t3.ftcdn.net/jpg/04/60/49/58/360_F_460495809_BvbaA64s1u94WeZj0iSlTlMQVGZMJt7V.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Navratri',
                            style: GoogleFonts.happyMonkey(
                              fontSize: 50,
                              fontWeight: FontWeight.w700,
                              color: Colors.yellowAccent,
                            ),
                          ),
                          Text(
                            'additional 12% off',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'View Details',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BuyNowScreen(),
                                ),
                              );
                            },
                            child: Text(
                              'Buy now',
                              style: TextStyle(color: Colors.white),
                            ),
                            style: ButtonStyle(
                              minimumSize: MaterialStateProperty.all<Size>(
                                Size(200.0, 5),
                              ),
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(Colors.red),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Goal Focused Membership',
                    style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),
                  ),

                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'View All',
                        style: TextStyle(color: Colors.black),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 300,
              child: Center(
                child: ListView(
                  controller: _controller,
                  // padding: EdgeInsets.only(left: 8.0),
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Card1(),
                    ),
                    SizedBox(
                      width: 6.0,
                    ),
                    Card1(),
                    SizedBox(
                      width: 6.0,
                    ),
                    Card1(),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: WormEffect(
                activeDotColor: Colors.black.withOpacity(0.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
