import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myapp1/mynotifications/myAllNotifications.dart';
import 'package:myapp1/notifications/notification_by_region.dart';
import 'package:myapp1/notifications/notification_cards.dart';

void main() => runApp(NotificationCards());

class NotificationCards extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DayNotification(),
    );
  }
}

class DayNotification extends StatefulWidget {
  @override
  _DayNotificationState createState() => _DayNotificationState();
}

class _DayNotificationState extends State<DayNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Օրվա հավաք',
          style: TextStyle(color: Colors.white),
        ),

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
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 120,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegionCheckbox()));
                        },
                        icon: Icon(Icons.tune_outlined),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyCards()));

                        },
                        icon: Icon(
                          Icons.notifications_none,
                          color: Colors.indigo,
                        ),
                      ),
                    ),
                  ),

                ],
              ),

              Expanded(
                child: Container(
                  // height: 500,
                  // width: 350,
                  child: ListView.builder(
                    padding: EdgeInsets.all(8),
                    itemBuilder: (context, i) {
                      return Card(
                        color: Colors.white70,
                        // elevation: 3,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Մալաթիա-Սեբաստիա',
                                    style: TextStyle(fontSize: 22),
                                  ),
                                ),
                                // Padding(
                                //   padding: const EdgeInsets.all(8.0),
                                //   child: IconButton(onPressed: (){}, icon:  Icon(Icons.more_vert_outlined)),
                                // ),
                              ],
                            ),
                            Divider(
                              color: Colors.grey,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.savings_outlined),
                                      Text('2'),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Icon(Icons.savings_rounded),
                                      Text('1'),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('10:00-13:15'),
                                ),
                              ],
                            ),
                            // Divider(
                            //   color: Colors.grey,
                            // ),
                            Align(
                              alignment: Alignment.center,
                              child: Table(
                                border: TableBorder(
                                    verticalInside: BorderSide(
                                        width: 0,
                                        color: Colors.grey,
                                        style: BorderStyle.solid),
                                    top: BorderSide(
                                        width: 0,
                                        color: Colors.grey,
                                        style: BorderStyle.solid)),
                                children: [
                                  TableRow(children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextButton(
                                        child: Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              'Տեսնել ավելին',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 20.0,
                                                  color: Colors.green[800]),
                                            )),
                                        onPressed: () {},
                                      ),
                                    ),
                                    ColoredBox(
                                      color: Colors.green,
                                      child: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: TextButton(
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              'Վերցնել',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 20.0,
                                                  color: Colors.white),
                                            ),
                                          ),
                                          onPressed: () {},
                                        ),
                                      ),
                                    ),
                                  ]),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
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
                                print("Pressed");
                              })),
                      Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: IconButton(
                              icon: Icon(
                                Icons.person_outline,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                print("Pressed");
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
