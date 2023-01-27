import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp1/constant.dart';
import 'package:myapp1/login/login_page.dart';
import 'package:myapp1/login/thanksYou.dart';

//import 'package:flutter_svg/svg.dart';
enum SingingCharacter {
  oneHundredToThreeHundred,
  threeHundredToFiveHundred,
  fiveHundredToEightHundred,
  eightHundredToThousand,
  aThousandAndMore
}

class RegistrationOrEntryPage extends StatefulWidget {
  const RegistrationOrEntryPage({super.key});




  @override
  State<RegistrationOrEntryPage> createState() =>
      _RegistrationOrEntryPageState();
}

class _RegistrationOrEntryPageState extends State<RegistrationOrEntryPage>  with SingleTickerProviderStateMixin {

  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 1000,
      ),
    );
    animation = controller
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller.reset();
        } else if (status == AnimationStatus.dismissed) {
          controller.forward();
        }
      });
    controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }



  SingingCharacter? _character = SingingCharacter.oneHundredToThreeHundred;
  bool _hidePass = true;
  bool _hideConfPass = true;

  final _passController = TextEditingController();
  final _confPassController = TextEditingController();

  final _profNameController = TextEditingController();
  final _profPhoneController = TextEditingController();
  final _profNumCarController = TextEditingController();
  final _profModelCarController = TextEditingController();
  final _profColerCarController = TextEditingController();

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
        child: Form(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: TextButton(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Մուտք',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 15.0, color: Colors.green[800],
                      decoration: TextDecoration.underline,
                      decorationColor:
                          Colors.green[800], //text decoration 'underline' color
                      decorationThickness: 2,
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyLoginPage()));
                },
              ),
            ),
            Expanded(
              child: Container(
                // height: 500,
                // width: 350,
                child: ListView(padding: EdgeInsets.all(10), children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Գրանցվել',
                          style: TextStyle(
                            fontSize: 35.0,
                            wordSpacing: 15,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      TextButton(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Առաջարկվող պայմաններ',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              //text decoration 'underline' color
                              decorationThickness: 2,
                              fontSize: 15.0, color: Colors.green[800],
                              decorationColor: Colors.green[
                                  800], //text decoration 'underline' color
                            ),
                          ),
                        ),
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Անձնական տվյալներ',
                          style: TextStyle(
                            fontSize: 30.0,
                            wordSpacing: 15,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      AnimatedBuilder(
                          animation: animation,
                          builder: (context, child) {
                            return CustomPaint(
                              foregroundPainter:
                                  BorderPainter(controller.value),
                              child: TextFormField(
                                controller: _profNameController,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  // prefixIcon: Icon(Icons.person),
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _profNameController.text = '';
                                      });
                                    },
                                    icon: Icon(Icons.delete_outline),
                                  ),
                                  helperText: 'Մուտքագրեք հայերեն տառերով',
                                  hintText: 'Անուն Ազգանուն',
                                  labelText: 'Անուն Ազգանուն*',
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5)),
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(255, 168, 167, 167),
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
                              ),
                            );
                          }),
                      const SizedBox(
                        height: 25,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.phone,
                        controller: _profPhoneController,
                        decoration: InputDecoration(
                          helperText: '(xxx)xxx-xxxx',
                          filled: true,
                          fillColor: Colors.grey[300],
                          prefixIcon: Icon(Icons.phone),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _profPhoneController.text = '';
                              });
                            },
                            icon: Icon(Icons.delete_outline),
                          ),
                          hintText: 'Հեռախոսահամար',
                          labelText: 'Հեռախոսահամար*',
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
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                      const SizedBox(
                        height: 45,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Մեքենայի տվյալներ',
                          style: TextStyle(
                            fontSize: 30.0,
                            wordSpacing: 15,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      TextFormField(
                        controller: _profNumCarController,
                        decoration: InputDecoration(
                          helperText: '00ar000',
                          filled: true,
                          fillColor: Colors.grey[300],
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
                      TextFormField(
                        controller: _profModelCarController,
                        decoration: InputDecoration(
                          helperText: 'Մուտքագրել լատինատառ',
                          filled: true,
                          fillColor: Colors.grey[300],
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
                      TextFormField(
                        controller: _profColerCarController,
                        decoration: InputDecoration(
                          helperText: 'Մուտքագրել հայերեն տառերով',
                          filled: true,
                          fillColor: Colors.grey[300],
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
                      Container(
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
                          children: <Widget>[
                            Align(
                                alignment: Alignment.centerLeft,
                                heightFactor: 2,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Մեքենայի տարողությունը',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                )),
                            ListTile(
                              title: const Text('100-300'),
                              leading: Radio<SingingCharacter>(
                                value:
                                    SingingCharacter.oneHundredToThreeHundred,
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
                                value:
                                    SingingCharacter.threeHundredToFiveHundred,
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
                                value:
                                    SingingCharacter.fiveHundredToEightHundred,
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
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Գաղտնաբառ',
                          style: TextStyle(
                            fontSize: 30.0,
                            wordSpacing: 15,
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
                          filled: true,
                          fillColor: Colors.grey[300],
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
                        height: 30,
                      ),
                      TextFormField(
                        controller: _confPassController,
                        obscureText: _hideConfPass,
                        maxLength: 16,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[300],
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
                          hintText: 'Կրկնել գաղտնաբառը',
                          labelText: 'Կրկնել գաղտնաբառը*',
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
                ]),
              ),
            ),
            SizedBox(
              height: 40,
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ThankYouPage()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  textStyle: const TextStyle(
                    fontSize: 24.0,
                  ),
                ),
                child: const Text(
                  'Ուղարկել դիմում',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            SizedBox(
              height: 20,
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
                              fontSize: 20.0,
                              color: Colors.green[800],
                            ),
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
