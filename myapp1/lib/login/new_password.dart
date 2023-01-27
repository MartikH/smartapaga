import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:flutter_svg/svg.dart';

class NewPassPage extends StatefulWidget {
  NewPassPage({super.key});

  @override
  State<NewPassPage> createState() => _NewPassPageState();
}

class _NewPassPageState extends State<NewPassPage> {
  bool _hideNewPass = true;
  bool _hideConfPass = true;
  final _newPassController = TextEditingController();
  final _confPassController = TextEditingController();

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
          children: [
            SizedBox(
              height: 120,
            ),
            Form(
              child: Expanded(
                child: Column(children: [
                  Expanded(
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
                                    'Նոր գաղտնաբառ',
                                    style: TextStyle(
                                      fontSize: 30.0,
                                      wordSpacing: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            TextFormField(
                              controller: _newPassController,
                              obscureText: _hideNewPass,
                              maxLength: 16,
                              decoration: InputDecoration(
                                fillColor: Colors.black12,
                                enabledBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 168, 167, 167),
                                      width: 1),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 54, 99, 248),
                                      width: 1),
                                ),
                                hintText: 'Նոր գաղտնաբառ',
                                labelText: 'Նոր գաղտնաբառ*',
                                prefixIcon: const Icon(Icons.security),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _hideNewPass = !_hideNewPass;
                                    });
                                  },
                                  icon: Icon(_hideNewPass
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                                ),
                              ),
                              onSaved: (value) {},
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            TextFormField(
                              controller: _confPassController,
                              obscureText: _hideConfPass,
                              maxLength: 16,
                              decoration: InputDecoration(
                                fillColor: Colors.black12,
                                enabledBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 168, 167, 167),
                                      width: 1),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 54, 99, 248),
                                      width: 1),
                                ),
                                hintText: 'Կրկնել նոր գաղտնաբառը',
                                labelText: 'Կրկնել նոր գաղտնաբառը*',
                                prefixIcon: const Icon(Icons.security),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _hideConfPass = !_hideConfPass;
                                    });
                                  },
                                  icon: Icon(_hideConfPass
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                                ),
                              ),
                              onSaved: (value) {},
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                          width: 150,
                          child: ElevatedButton(
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => const CardSheet()));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              textStyle: const TextStyle(
                                fontSize: 24.0,
                              ),
                            ),
                            child: const Text(
                              'Հաստատել',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
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
