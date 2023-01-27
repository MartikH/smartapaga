import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myapp1/constant.dart';
import 'package:myapp1/mynotifications/myAllNotifications.dart';
import 'package:myapp1/mynotifications/qrcode/qr_creat_page.dart';

void main() => runApp(MyDetailNotificationsCards());

class MyDetailNotificationsCards extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyDetailNotificationsCardsPage(),
    );
  }
}

class MyDetailNotificationsCardsPage extends StatefulWidget {
  @override
  _MyDetailNotificationsCardsPageState createState() =>
      _MyDetailNotificationsCardsPageState();
}

class _MyDetailNotificationsCardsPageState
    extends State<MyDetailNotificationsCardsPage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Մանրամ    ասն',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MyAllNotificationsCardsPage()));
            },
            icon: Icon(
              Icons.undo_outlined,
              color: Colors.white,
            ),
          ),
        ],

        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topRight,
            image: AssetImage('assets/images/22.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(children: [
          SizedBox(
            height: 130,
          ),
          Expanded(
            child: Container(
              //width: MediaQuery.of(context).size.width,

              // width: 350,
              child: ListView.builder(
                  padding: EdgeInsets.all(8),
                  itemBuilder: (context, i) {
                    return Card(
                      color: Colors.grey.shade100,
                      //elevation: 3,
                      child: Column(children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder: (context) =>
                                        //             myAllNotificationByFiltredPage()));
                                      },
                                      icon: Icon(Icons.calendar_month_outlined),
                                    ),
                                    Text('07 /12 / 23'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder: (context) => RegionCheckbox()));
                                      },
                                      icon: Icon(Icons.access_time),
                                    ),
                                    Text('15:45-16:00'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.person_outline),
                              Text('Արևիկ Պետրոսյան'),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.phone_outlined),
                              Text('+374-94-53-01-95'),
                            ],
                          ),
                        ),
                        Divider(
                          color: Colors.grey,
                        ),
                        Container(
                          // height: 500,
                          // width: 350,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Container(
                                    width: 40,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey.shade300),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Icon(Icons.balance_outlined),
                                          ),
                                          Divider(
                                            indent: 5,
                                            endIndent: 5,
                                            color: Colors.grey.shade300,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('1'),
                                          ),
                                        ]),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Container(
                                    width: 40,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey.shade300),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child:
                                                Icon(Icons.list_alt_outlined),
                                          ),
                                          Divider(
                                            indent: 5,
                                            endIndent: 5,
                                            color: Colors.grey.shade300,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('3'),
                                          ),
                                        ]),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Container(
                                    width: 40,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey.shade300),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Icon(
                                              Icons.lightbulb,
                                            ),
                                          ),
                                          Divider(
                                            indent: 5,
                                            endIndent: 5,
                                            color: Colors.grey.shade300,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('23'),
                                          ),
                                        ]),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Container(
                                    width: 40,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey.shade300),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Icon(Icons.shopping_bag),
                                          ),
                                          Divider(
                                            indent: 5,
                                            endIndent: 5,
                                            color: Colors.grey.shade300,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('1'),
                                          ),
                                        ]),
                                  ),
                                ),
                              ]),
                        ),
                        Divider(
                          color: Colors.grey.shade300,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.navigation_outlined),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Շենգավիթ, Շիրակի փողոց, 1/68 շենք 1',
                                style: TextStyle(fontSize: 17),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 100,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Մուտք',
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Գումարը $paymentControler դրամ',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        Divider(
                          color: Colors.grey,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll<Color>(Colors.white),
                                ),
                                onPressed: () {},
                                child: Text('Չեղարկել', style: TextStyle(color: Colors.grey),),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              QRCreatePage()));

                                },
                                child: Text('Վերցնել', style: TextStyle(color: Colors.white)),
                              ),
                            ),
                          ],
                        ),
                      ]),
                    );
                  }),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: IconButton(
                          icon: Icon(
                            Icons.home_outlined,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        MyAllNotificationsCardsPage()));
                          })),
                  Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: IconButton(
                          icon: Icon(
                            Icons.person_outline,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) =>
                            //             MyFinishedNotificationsCardsPage()));
                          })),
                  Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: IconButton(
                          icon: Icon(
                            Icons.list_alt_outlined,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => MyCards()));
                          })),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
