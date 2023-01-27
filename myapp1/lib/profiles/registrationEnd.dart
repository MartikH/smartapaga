import 'package:flutter/material.dart';



void main() => runApp(NotificationEnd());

class NotificationEnd extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NotificationEndPage(),
    );
  }
}

class NotificationEndPage extends StatefulWidget {
  @override
  _NotificationEndPageState createState() => _NotificationEndPageState();
}

class _NotificationEndPageState extends State<NotificationEndPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      extendBodyBehindAppBar: true,
            body: Column(
          children: [
            Align(
                alignment: Alignment.topCenter, child: Image.asset('../2.png')),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: Container(
                // height: 500,
                // width: 350,
                child: Column(
                        children: [
                        Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('textFeaderCard'),
                              ),
                          Divider(
                            color: Colors.grey,
                          ),
                         TextButton(
    child:  Text(
    'Մոռացել եք գաղտնաբառը',
    style: TextStyle(color: Colors.green),
    ),
    onPressed: () {
      // Navigator.push(
      // context,
      // MaterialPageRoute(builder: (context) => ForgotPassPage()),
    }
    ),
 ]

                ),

    ),
    ),

             ]
            ),
            );



  }
}