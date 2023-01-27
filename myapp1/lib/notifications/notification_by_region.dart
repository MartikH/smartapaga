import 'package:flutter/material.dart';
import 'package:myapp1/login/login_page.dart';
import 'package:myapp1/mynotifications/myAllNotifications.dart';
import 'package:myapp1/notifications/checkbox/checkBoxState.dart';
import 'package:myapp1/notifications/notification_day.dart';

import '../constant.dart';

void main() => runApp(RegionCheckbox());

class RegionCheckbox extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NotificationByRegion(),
    );
  }
}

class NotificationByRegion extends StatefulWidget {
  @override
  _NotificationByRegionState createState() => _NotificationByRegionState();
}

class _NotificationByRegionState extends State<NotificationByRegion> {
  //List<String> staticData = RegionData.regiondata;
  bool isSelectionMode = false;

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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyAllNotificationsCards()));
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
                                  builder: (context) => MyAllNotificationsCards()));
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
                      buildGroupCheckbox(allregiondata),
                      Divider(
                        color: Colors.grey,
                      ),
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
