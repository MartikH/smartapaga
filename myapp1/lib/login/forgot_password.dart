import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:myapp1/login/pin_code.dart';
//import 'package:flutter_svg/svg.dart';

class ForgotPassPage extends StatefulWidget {
  ForgotPassPage({super.key});

  @override
  State<ForgotPassPage> createState() => _ForgotPassPageState();
}

class _ForgotPassPageState extends State<ForgotPassPage> {
  final _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.topRight,
        decoration: BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topRight,
            image: AssetImage('assets/images/1.png'),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            Form(
              child: Expanded(
                  child: Container(
                // height: 500,
                // width: 350,
                child: ListView(
                  padding: EdgeInsets.all(10),
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Մոռացել եք գաղտնաբառը',
                                style: TextStyle(
                                  fontSize: 30.0,
                                  wordSpacing: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 70,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                'Մուտքագրեք Ձեր հաշվում նշված հեռախոսահամարը',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    wordSpacing: 15,
                                    color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          controller: _phoneController,
                          decoration: InputDecoration(
                            helperText: '(xxx)xxx-xxxx',
                            fillColor: Colors.black12,
                            prefixIcon: Icon(Icons.phone),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _phoneController.text = '';
                                });
                              },
                              icon: Icon(Icons.delete_outline),
                            ),
                            hintText: 'Հեռախոսահամար',
                            labelText: 'Հեռախոսահամար*',
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 168, 167, 167),
                                  width: 1),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 54, 99, 248),
                                  width: 1),
                            ),
                          ),
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                      width: 250,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PinCodePassPage()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          textStyle: const TextStyle(
                            fontSize: 24.0,
                          ),
                        ),
                        child: const Text(
                          'Վերականգնել',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
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



          ],
        ),
      ),
    );
  }
}
