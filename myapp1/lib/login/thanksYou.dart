import 'package:flutter/material.dart';
import 'package:myapp1/login/login_page.dart';
import 'package:myapp1/notifications/notification_day.dart';

void main() => runApp(ThankYouPage());

class ThankYouPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyLoginPage()),
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
          alignment: Alignment.topRight,
          decoration: BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.topRight,
              image: AssetImage('assets/images/1.png'),
            ),
          ),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Center(
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  border: Border.all(
                    width: 1,
                    color: Colors.grey,
                    style: BorderStyle.solid,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(
                      child: Text(
                          'Շնորհակալություն.  Ձեր դիմումն ընդունվել է: Մենք Ձեզ հետ կապ կհաստատենք 2 աշխատանքային օրվա ընթացքում:',
                          textAlign: TextAlign.center),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    TextButton(
                      child: Text(
                        'Լավ',
                        style: TextStyle(color: Colors.green),
                      ),
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => DayNotification()),
                        // );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
