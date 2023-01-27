import 'package:flutter/material.dart';
import 'package:myapp1/notifications/notification_cards.dart';

import '../login/login_page.dart';

void main() => runApp(DeleteCards());

class DeleteCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DeleteCardsPage(),
    );
  }
}

class DeleteCardsPage extends StatefulWidget {
  @override
  _DeleteCardsPageState createState() => _DeleteCardsPageState();
}

class _DeleteCardsPageState extends State<DeleteCardsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          'Հետ',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.indigo),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyCardsPage()),
            );
          },
          icon: Icon(
            Icons.undo_outlined,
            color: Colors.indigo,
          ),
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
        child: Column(children: [

          SizedBox(
            height: 80,
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
                    elevation: 3,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Ցանկանու՞մ եք ջնջել ծանուցումը',
                                style: TextStyle(fontSize: 22),
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.grey,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  TextButton(
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Ջնջել',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            color: Colors.red[800]),
                                      ),
                                    ),
                                    onPressed: () {},
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        TextButton(
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              'Չեղարկել',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontSize: 20.0,
                                                  color: Colors.green[800]),
                                            ),
                                          ),
                                          onPressed: () {},
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
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
                            //   Navigator.push(
                            //       context,
                            //       MaterialPageRoute(
                            //           builder: (context) => MyCards()));
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
