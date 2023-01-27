import 'package:flutter/material.dart';
import 'package:myapp1/login/forgot_password.dart';
import 'package:myapp1/login/registrationOrEntry.dart';
import 'package:myapp1/profiles/profiles.dart';
import '../constant.dart';
import 'package:flutter_svg/svg.dart';

import '../notifications/notification_day.dart';

class MyLoginPage extends StatefulWidget {
  MyLoginPage({super.key});

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  bool _hidePass = true;
  bool _isChecked = false;

  final _nameController = TextEditingController();
  final _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topRight,
            image: AssetImage('assets/images/1.png'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
              child: Expanded(
                child: ListView(padding: EdgeInsets.all(10), children: [
                  const SizedBox(
                    height: 130,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Մուտք գործել',
                              style: TextStyle(
                                fontSize: 30.0,
                                wordSpacing: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      TextFormField(
                        controller: _nameController,
                        decoration: InputDecoration(
                          fillColor: Colors.black12,
                          prefixIcon: Icon(Icons.person),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _nameController.text = '';
                              });
                            },
                            icon: Icon(Icons.delete_outline),
                          ),
                          hintText: 'Անուն',
                          labelText: 'Անուն*',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 168, 167, 167),
                                width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 54, 99, 248),
                                width: 1),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        controller: _passController,
                        obscureText: _hidePass,
                        maxLength: 16,
                        decoration: InputDecoration(
                          fillColor: Colors.black12,
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 168, 167, 167),
                                width: 1),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 54, 99, 248),
                                width: 1),
                          ),
                          hintText: 'Գաղտնաբառ',
                          labelText: 'Գաղտնաբառ*',
                          prefixIcon: const Icon(Icons.security),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _hidePass = !_hidePass;
                              });
                            },
                            icon: Icon(_hidePass
                                ? Icons.visibility
                                : Icons.visibility_off),
                          ),
                        ),
                        onSaved: (value) {},
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                checkColor: Colors.white,
                                fillColor:
                                    MaterialStateProperty.resolveWith(getColor),
                                value: _isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    _isChecked = value!;
                                  });
                                },
                              ),
                              const Text(
                                'Հիշել',
                                style: TextStyle(color: Colors.green),
                              ),
                            ],
                          ),
                          TextButton(
                            child: Text(
                              'Մոռացել եք գաղտնաբառը',
                              style: TextStyle(color: Colors.green),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ForgotPassPage()),
                              );
                            },
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 40,
                        width: 250,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DayNotification()));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            textStyle: const TextStyle(
                              fontSize: 24.0,
                            ),
                          ),
                          child: const Text(
                            'Մուտք',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Expanded(child: Divider()),
                              Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Text(
                                  'կամ',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey),
                                ),
                              ),
                              Expanded(child: Divider()),
                            ]),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextButton(
                        child: Text(
                          'Գրանցվել',
                          style: TextStyle(
                            fontSize: 30, color: Colors.green[800],

                            decoration: TextDecoration.underline,

                            decorationColor: Colors
                                .green[800], //text decoration 'underline' color
                            decorationThickness: 2,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProfilePage()));
                        },
                      ),
                    ],
                  ),
                ]),
              ),
            ),
            Align(
              // alignment: Alignment.bottomCenter,
              child: Table(
                border: TableBorder.all(color: Colors.green, width: 1.5),
                children: [
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              'Terms of Use',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontSize: 020.0, color: Colors.green[800]),
                            )),
                        onPressed: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Privancy Policy',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 20.0, color: Colors.green[800]),
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
