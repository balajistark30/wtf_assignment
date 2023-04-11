import 'package:flutter/material.dart';
import 'package:wtf_assignment/widgets/card2.dart';
import 'package:wtf_assignment/widgets/card4.dart';
class BuyNowScreen extends StatefulWidget {
  @override
  State<BuyNowScreen> createState() => _BuyNowScreenState();
}

class _BuyNowScreenState extends State<BuyNowScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEEEEE),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_circle_left,
          color: Colors.black,
        ),
        title: Text(
          'Membership',
          style: TextStyle(color: Colors.black),
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
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18.0, left: 10.0),
                child: Text(
                  'General Membership',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 1.2,
                child: ListView(
                  children: [
                    Card2(
                      title: 'Monthly',
                      price: '1999',
                      perdayprice: '70/day',
                    ),
                    Card4(
                      title: 'Quarterly',
                      price: '2999',
                      perdayprice: '60/day',
                    ),
                    Card2(
                      title: 'Halfyearly',
                      price: '7999',
                      perdayprice: '50/day',
                    ),
                    Card2(
                      title: 'Annualy',
                      price: '9999',
                      perdayprice: '48/day',
                    ),
                    SizedBox(height:30 ,),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Pay now',
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ButtonStyle(
                            minimumSize: MaterialStateProperty.all<Size>(
                              Size(100, 50),
                            ),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.red),
                            shape:
                                MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                          ),
                        )),
                  ],
                ),
              ),
              // TextButton(onPressed: (){}, child: Text(data))
            ],
          ),
        ),
      ),
    );
  }
}
