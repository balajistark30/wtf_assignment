import 'package:flutter/material.dart';
import 'package:wtf_assignment/widgets/card3.dart';
import 'dart:ui' as ui;
import 'package:flutter/services.dart';

class SecondScreen extends StatefulWidget {
  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {


  double _currentValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(color: Colors.redAccent),
              ),
              Positioned(
                top: MediaQuery.of(context).padding.top + 30,
                left: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Hello Jose,',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                        Icon(
                          Icons.waving_hand,
                          color: Colors.white,
                        )
                      ],
                    ),
                    Text(
                      'Ready to crush your workout?',
                      style: TextStyle(color: Colors.white70),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Card(
                        borderOnForeground: true,
                        color: Colors.white.withOpacity(0.3),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          height: 90,
                          width: 325,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      TextButton(
                                          onPressed: () {},
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.monitor_weight,
                                                color: Colors.white,
                                              ),
                                              Text(
                                                'Weight',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                              Icon(
                                                Icons.keyboard_arrow_down,
                                                color: Colors.white,
                                              )
                                            ],
                                          ))
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Row(
                                      children: [
                                        Text(
                                          _currentValue.toInt().toString(),
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Text(
                                          'kg',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10.0),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20.0),
                                child: VerticalDivider(
                                  width: 3.0,
                                  thickness: 0.5,
                                  color: Colors.white,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      TextButton(
                                          onPressed: () {},
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.man,
                                                color: Colors.white,
                                              ),
                                              Text(
                                                'Height',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                              Icon(
                                                Icons.keyboard_arrow_down,
                                                color: Colors.white,
                                              )
                                            ],
                                          ))
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Row(
                                      children: [
                                        Text(
                                          '175',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Text(
                                          'cm',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10.0),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20.0),
                                child: VerticalDivider(
                                  width: 3.0,
                                  thickness: 0.5,
                                  color: Colors.white,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      TextButton(
                                          onPressed: () {},
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.monitor_weight_rounded,
                                                color: Colors.white,
                                              ),
                                              Text(
                                                'BMI',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                              Icon(
                                                Icons.keyboard_arrow_down,
                                                color: Colors.white,
                                              )
                                            ],
                                          ))
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Row(
                                      children: [
                                        Text(
                                          '24.2',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        //Text('cm',style: TextStyle(color: Colors.white,fontSize: 10.0),)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                  top: 50,
                  right: 20,
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: NetworkImage(
                            'https://bodyartguru.com/wp-content/uploads/2021/12/Chris-Bumstead.jpg'),
                        radius: 30,
                      )
                    ],
                  ))
            ],
          ),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10.0, left: 15.0, right: 15.0),
                      child: Card(
                        borderOnForeground: true,
                        color: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          height: 120,
                          width: 325,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Card(
                                      borderOnForeground: true,
                                      color: Colors.white.withOpacity(0.8),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(40)),
                                      child: Container(
                                        height: 30.0,
                                        width: 100.0,
                                        child: Center(
                                            child: Text(
                                          'Target Weight',
                                          style: TextStyle(fontSize: 12.0),
                                        )),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '10 Kg Behind',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Expanded(
                                    child: Slider(
                                        value: _currentValue,
                                        min: 0,
                                        max: 200,
                                        divisions: 200,
                                        activeColor: Colors.red,
                                        thumbColor: Colors.red,
                                        onChanged: (value) {
                                          setState(() {
                                            _currentValue = value;
                                          });
                                        }),
                                  )
                                ],
                              ),
                              Spacer(),
                              Column(children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.network(
                                    'https://cdn-icons-png.flaticon.com/512/7346/7346053.png',
                                    scale: 8,
                                  ),
                                ),
                                Text(
                                  _currentValue.toInt().toString(),
                                  style: TextStyle(color: Colors.white),
                                )
                              ])
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Card(
                              color: Colors.red,
                              elevation: 3.0,
                              borderOnForeground: true,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: SizedBox(
                                height: 30.0,
                                width: 80.0,
                                child: Center(
                                    child: Text('Today',
                                        style: TextStyle(color: Colors.white))),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Card(
                              color: Colors.white,
                              elevation: 3.0,
                              borderOnForeground: true,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: SizedBox(
                                height: 30.0,
                                width: 80.0,
                                child: Center(
                                    child: Text('Upcoming',
                                        style: TextStyle(color: Colors.black))),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Card(
                              color: Colors.white,
                              elevation: 3.0,
                              borderOnForeground: true,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: SizedBox(
                                height: 30.0,
                                width: 80.0,
                                child: Center(
                                    child: Text('History',
                                        style: TextStyle(color: Colors.black))),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text(
                            'Your workout',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Card3(musclegroup: 'Shoulder'),
                            Card3(musclegroup: 'Chest'),
                            Card3(musclegroup: 'Legs'),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(color: Colors.black),
                      ),
                      child: TextButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(Colors.red),
                              minimumSize:
                                  MaterialStateProperty.all(Size(300.0, 10.0))),
                          onPressed: () {},
                          child: Text(
                            'Get Started',
                            style: TextStyle(color: Colors.white),
                          )),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

