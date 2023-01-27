import 'package:flutter/material.dart';
import 'package:myapp1/login/login_page.dart';
import 'package:myapp1/mynotifications/myAllNotifications.dart';
import 'package:myapp1/mynotifications/myFinishedNotifications.dart';
import 'package:myapp1/mynotifications/myMissedNotifications.dart';
import 'package:myapp1/mynotifications/myUnfinishedNotifications.dart';
import 'package:myapp1/notifications/checkbox/checkBoxState.dart';
import 'package:myapp1/notifications/notification_day.dart';

import '../constant.dart';

void main() => runApp(myAllNotificationByFiltred());

class myAllNotificationByFiltred extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: myAllNotificationByFiltredPage(),
    );
  }
}

class myAllNotificationByFiltredPage extends StatefulWidget {
  @override
  _myAllNotificationByFiltredPageState createState() =>
      _myAllNotificationByFiltredPageState();
}

class _myAllNotificationByFiltredPageState
    extends State<myAllNotificationByFiltredPage> {
  //List<String> staticData = RegionData.regiondata;
  bool isSelectionMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Իմ հավաքները',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => MyAllNotificationsCardsPage()),
            );
          },
          icon: Icon(
            Icons.undo_outlined,
            color: Colors.indigo,
          ),
        ),
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
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: IconButton(
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => MyAllNotificationsCards()));
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
                                  builder: (context) =>
                                      MyAllNotificationsCards()));
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
                                  builder: (context) => NotificationCards()));
                        },
                        icon: Icon(
                          Icons.clear,
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
                  child: ListView(
                    padding: EdgeInsets.all(10),
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: TextButton(
                          child: Text(
                            'Իմ հավաքները',
                            style: TextStyle(color: Colors.green),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      MyAllNotificationsCardsPage()),
                            );
                          },
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: TextButton(
                          child: Text(
                            'Ավարտված',
                            style: TextStyle(color: Colors.green),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      MyFinishedNotificationsCards()),
                            );
                          },
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: TextButton(
                          child: Text(
                            'Չկատարված',
                            style: TextStyle(color: Colors.green),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      MyUnFinishedNotificationsCards()),
                            );
                          },
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: TextButton(
                          child: Text(
                            'Բաց թողնված',
                            style: TextStyle(color: Colors.green),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyMissedNotificationsCards()),
                            );
                          },
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      buildGroupCheckbox(allregiondata),
                      Divider(
                        color: Colors.grey,
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Ըստ տարածաշրջանի', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)),
                      ...regiondata.map(buildSinglCheckbox).toList(),
                    ],
                  ),
                ),
              ),
            ]),
      ),
    );
  }

  Widget buildSinglCheckbox(CheckBoxState checkbox) => CheckboxListTile(
        controlAffinity: ListTileControlAffinity.leading,
        title: Text(checkbox.title),
        activeColor: Colors.green,
        value: checkbox.isSelectionMode,
        onChanged: (value) => setState(() {
          checkbox.isSelectionMode = value!;
          allregiondata.isSelectionMode =
              regiondata.every((regiondata) => regiondata.isSelectionMode);
        }),
      );

  Widget buildGroupCheckbox(CheckBoxState checkbox) => CheckboxListTile(
        controlAffinity: ListTileControlAffinity.leading,
        title: Text(checkbox.title),
        activeColor: Colors.green,
        value: checkbox.isSelectionMode,
        onChanged: toggleGroupCheckbox,
      );

  void toggleGroupCheckbox(bool? isSelectionMode) {
    if (isSelectionMode == null) return;

    setState(() {
      allregiondata.isSelectionMode = isSelectionMode;
      regiondata.forEach(
          (regiondata) => regiondata.isSelectionMode = isSelectionMode);
    });
  }
}
