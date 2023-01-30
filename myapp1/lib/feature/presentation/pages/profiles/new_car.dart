import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//import 'package:flutter_svg/svg.dart';
enum SingingCharacter {
  oneHundredToThreeHundred,
  threeHundredToFiveHundred,
  fiveHundredToEightHundred,
  eightHundredToThousand,
  aThousandAndMore
}

class NewCarPage extends StatefulWidget {
  NewCarPage({super.key});

  @override
  State<NewCarPage> createState() => _NewCarPageState();
}

class _NewCarPageState extends State<NewCarPage> {
  SingingCharacter? _character = SingingCharacter.oneHundredToThreeHundred;

  final _profNumCarController = TextEditingController();
  final _profModelCarController = TextEditingController();
  final _profColerCarController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Column(children: [
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset('../2.png'),
          ),
          Expanded(
            child: Container(
              child: ListView(padding: EdgeInsets.all(10), children: [
                const SizedBox(
                  height: 30,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(
                      height: 45,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Նոր մեքենայի տվյալներ',
                        style: TextStyle(
                          fontSize: 30.0,
                          wordSpacing: 15,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        heightFactor: 2,
                        child: Text(
                          'Մեքենայի համարանիշը',
                          style: TextStyle(color: Colors.grey),
                        )),
                    TextFormField(
                      controller: _profNumCarController,
                      decoration: InputDecoration(
                        helperText: '00ar000',
                        fillColor: Colors.black12,
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _profNumCarController.text = '';
                            });
                          },
                          icon: Icon(Icons.delete_outline),
                        ),
                        hintText: 'Մեքենայի համարանիշը',
                        labelText: 'Մեքենայի համարանիշը*',
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
                      height: 35,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        heightFactor: 2,
                        child: Text(
                          'Մեքենայի մակնիշը',
                          style: TextStyle(color: Colors.grey),
                        )),
                    TextFormField(
                      controller: _profModelCarController,
                      decoration: InputDecoration(
                        helperText: 'Մուտքագրել լատինատառ',
                        fillColor: Colors.black12,
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _profModelCarController.text = '';
                            });
                          },
                          icon: Icon(Icons.delete_outline),
                        ),
                        hintText: 'Մեքենայի մակնիշը',
                        labelText: 'Մեքենայի մակնիշը*',
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
                      height: 35,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        heightFactor: 2,
                        child: Text(
                          'Մեքենայի գույնը',
                          style: TextStyle(color: Colors.grey),
                        )),
                    TextFormField(
                      controller: _profColerCarController,
                      decoration: InputDecoration(
                        helperText: 'Մուտքագրել հայերեն տառերով',
                        fillColor: Colors.black12,
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _profColerCarController.text = '';
                            });
                          },
                          icon: Icon(Icons.delete_outline),
                        ),
                        hintText: 'Մեքենայի գույնը',
                        labelText: 'Մեքենայի գույնը*',
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
                      height: 35,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        heightFactor: 2,
                        child: Text(
                          'Մեքենայի տարողությունը',
                          style: TextStyle(color: Colors.grey),
                        )),
                    const SizedBox(
                      height: 5,
                    ),
                    Column(
                      children: <Widget>[
                        ListTile(
                          title: const Text('100-300'),
                          leading: Radio<SingingCharacter>(
                            value: SingingCharacter.oneHundredToThreeHundred,
                            groupValue: _character,
                            onChanged: (SingingCharacter? value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          ),
                        ),
                        ListTile(
                          title: const Text('300-500'),
                          leading: Radio<SingingCharacter>(
                            value: SingingCharacter.threeHundredToFiveHundred,
                            groupValue: _character,
                            onChanged: (SingingCharacter? value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          ),
                        ),
                        ListTile(
                          title: const Text('500-800'),
                          leading: Radio<SingingCharacter>(
                            value: SingingCharacter.fiveHundredToEightHundred,
                            groupValue: _character,
                            onChanged: (SingingCharacter? value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          ),
                        ),
                        ListTile(
                          title: const Text('800-1000'),
                          leading: Radio<SingingCharacter>(
                            value: SingingCharacter.eightHundredToThousand,
                            groupValue: _character,
                            onChanged: (SingingCharacter? value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          ),
                        ),
                        ListTile(
                          title: const Text('1000 և ավելի'),
                          leading: Radio<SingingCharacter>(
                            value: SingingCharacter.aThousandAndMore,
                            groupValue: _character,
                            onChanged: (SingingCharacter? value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      height: 40,
                      width: 250,
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
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
