import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp1/login/new_password.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
//import 'package:flutter_svg/svg.dart';

class PinCodePassPage extends StatefulWidget {
  PinCodePassPage({super.key});

  @override
  State<PinCodePassPage> createState() => _PinCodePassPageState();
}

class _PinCodePassPageState extends State<PinCodePassPage> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        decoration: BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topRight,
            image: AssetImage('assets/images/22.png',),
            fit: BoxFit.fill,
          ),
        ),



        child: Form(
          child: Column(children: [
            Expanded(
              child: Container(
                child: ListView(padding: EdgeInsets.all(10), children: [
                  const SizedBox(
                    height: 150,
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Խնդրում ենք մուտքագրել 6 նիշանոց',
                            style: TextStyle(
                              fontSize: 30.0,
                              wordSpacing: 15,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 70.0,
                        ),
                        Container(
                          height: 250,
                          width: 400,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.grey[200],
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 20),
                                  child: Column(
                                    children: [
                                      PinCodeTextField(
                                        appContext: context,
                                        controller: controller,
                                        length: 6,
                                        cursorHeight: 19,
                                        enableActiveFill: true,
                                        textStyle: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal,
                                        ),
                                        inputFormatters: [
                                          FilteringTextInputFormatter.digitsOnly,
                                        ],
                                        pinTheme: PinTheme(
                                          shape: PinCodeFieldShape.box,
                                          fieldHeight: 40,
                                          inactiveColor: Colors.grey,
                                          selectedColor: Colors.lightBlue,
                                          activeFillColor: Colors.blue,
                                          selectedFillColor: Colors.blue,
                                          inactiveFillColor: Colors.grey.shade100,
                                          borderWidth: 1,
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        onChanged: ((value) {
                                          print(value);
                                        }),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      NewPassPage()));
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.green[800],
                                          // textStyle: TextStyle(
                                          //   fontSize: 24.0,
                                          // ),
                                        ),
                                        child: const Text(
                                          'Շարունակել',
                                          style: TextStyle(fontSize: 18),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 40,
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Կոդ չե՞ք ստացել:',
                                        style: TextStyle(
                                          fontSize: 15.0,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: TextButton(
                                          child: Align(
                                              alignment: Alignment.centerRight,
                                              child: Text(
                                                'Ուղարկել կրկին',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    fontSize: 15.0,
                                                    color: Colors.green[800]),
                                              )),
                                          onPressed: () {},
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                        ),
                      ]),
                ]),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
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
          ]),
        ),
      ),
    );
  }
}
