import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp1/login/login_page.dart';


class ChangePassPage extends StatefulWidget {
  ChangePassPage({super.key});

  @override
  State<ChangePassPage> createState() => _ChangePassPageState();
}

class _ChangePassPageState extends State<ChangePassPage> {
  bool _hideOldPass = true;
  bool _hideNewPass = true;
  bool _hideConfirmPass = true;

  final _oldPassController = TextEditingController();
  final _newPassController = TextEditingController();
  final _confirmPassController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              alignment: Alignment.topRight,
              image: AssetImage('assets/images/22.png'),
              fit: BoxFit.fill),
        ),
        child: Center(
          child: Form(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                padding: EdgeInsets.all(10),
                width: 400,
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.white70,
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListView(
                  padding: EdgeInsets.all(10),
                  children: [
                    const SizedBox(
                      height: 20,
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
                                'Փոխել գաղտնաբառը',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  wordSpacing: 8,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: _oldPassController,
                          obscureText: _hideOldPass,
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
                            hintText: 'Հին գաղտնաբառ',
                            labelText: 'Հին գաղտնաբառ*',
                            prefixIcon: const Icon(Icons.security),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _hideOldPass = !_hideOldPass;
                                });
                              },
                              icon: Icon(_hideOldPass
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                            ),
                          ),
                          onSaved: (value) {},
                        ),
                        const SizedBox(
                          height: 20,
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
                          height: 20,
                        ),
                        TextFormField(
                          controller: _confirmPassController,
                          obscureText: _hideConfirmPass,
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
                                  _hideConfirmPass = !_hideConfirmPass;
                                });
                              },
                              icon: Icon(_hideConfirmPass
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
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyLoginPage()));
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
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
