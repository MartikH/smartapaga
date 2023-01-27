import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:myapp1/mynotifications/myAllNotifications.dart';

void main() => runApp(MyMissedNotificationsCards());

class MyMissedNotificationsCards extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyMissedNotificationsCardsPage(),
    );
  }
}

class MyMissedNotificationsCardsPage extends StatefulWidget {
  @override
  _MyMissedNotificationsCardsPageState createState() =>
      _MyMissedNotificationsCardsPageState();
}

class _MyMissedNotificationsCardsPageState
    extends State<MyMissedNotificationsCardsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Բաց թողնված',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {

            },
            icon: Icon(
              Icons.notifications_none,
              color: Colors.indigo,
            ),
          ),
        ],
        // leading: Icon(
        //   Icons.arrow_back,
        //   color: Colors.indigo,
        // ),
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
            height: 20,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyAllNotificationsCardsPage()));
                    },
                    icon: Icon(Icons.tune_outlined),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyAllNotificationsCardsPage()));
                    },
                    icon: Icon(Icons.table_chart_outlined),
                  ),
                ],
              ),
            ),
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
                                  Icon(Icons.where_to_vote),
                                  Text('2'),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Icon(Icons.where_to_vote_outlined),
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
