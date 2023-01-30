import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp1/constant.dart';
import 'package:myapp1/feature/presentation/pages/profiles/chang_password.dart';
import 'package:myapp1/feature/presentation/pages/profiles/new_car.dart';
import 'package:myapp1/login/login_page.dart';
import 'package:myapp1/notifications/notification_cards.dart';
import 'package:image_picker/image_picker.dart';


enum SingingCharacter {
  oneHundredToThreeHundred,
  threeHundredToFiveHundred,
  fiveHundredToEightHundred,
  eightHundredToThousand,
  aThousandAndMore
}

class ProfilePage extends StatefulWidget {
  ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  SingingCharacter? _character = SingingCharacter.oneHundredToThreeHundred;

  final _profNameController = TextEditingController();
  final _profPhoneController = TextEditingController();
  final _profNumCarController = TextEditingController();
  final _profModelCarController = TextEditingController();
  final _profColorCarController = TextEditingController();

  File? _file;

  Future<File?> selectImage({required ImageSource imageSource}) async {
    try {
      PickedFile? pickedImage = await ImagePicker().getImage(source: imageSource, imageQuality: 100);
      if (pickedImage != null) {
        return File(pickedImage.path);
      } else {
        return _file;
      }
    } on PlatformException catch (error) {
      SnackBar snackBar = SnackBar(content: Text('Error: $error'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      return null;
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topRight,
            image: AssetImage('assets/images/22.png'),
            fit: BoxFit.fill,
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
                    'Դուրս գալ',
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
              child: ListView(padding: EdgeInsets.all(5), children: [
                Center(
                  child: Stack(
                      //  alignment: Alignment.center, // Center children in the Stack
                      children: [
                        _file == null
                            ? CircleAvatar(
                                radius: 83,
                                backgroundImage: AssetImage(
                                    'assets/images/myphoto.webp'))
                            : Positioned(
                              child: CircleAvatar(
                                radius: 83,
                                child: ClipOval(
                          clipper: MyClipperAvatar(),
                                  child: Image.file(
                                    _file!,
                                  ),
                                ),
                              ),
                            ),
                        Positioned(
                          bottom: 15,
                          right: 5,
                          child: InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                  context: context,
                                  builder: ((builder) => uploadImage()));
                            },
                            child: CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.white,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                //color: Colors.greenAccent,
                                child: CircleAvatar(
                                  radius: 18,
                                  backgroundColor: Colors.grey,
                                  child: Icon(
                                    Icons.camera_alt_rounded,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                ),
                const SizedBox(
                  height: 30,
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
                            'Անձնական տվյալներ',
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
                    Align(
                        alignment: Alignment.centerLeft,
                        heightFactor: 2,
                        child: Text(
                          'Անուն Ազգանուն',
                          style: TextStyle(color: Colors.grey),
                        )),
                    TextFormField(
                      controller: _profNameController,
                      decoration: InputDecoration(
                        fillColor: Colors.black12,
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
                      height: 25,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        heightFactor: 2,
                        child: Text(
                          'Հեռախոսահամար',
                          style: TextStyle(color: Colors.grey),
                        )),
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      controller: _profPhoneController,
                      decoration: InputDecoration(
                        helperText: '(xxx)xxx-xxxx',
                        fillColor: Colors.black12,
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
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    TextButton(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Row(
                          children: [
                            Icon(
                              Icons.add_circle_outline,
                              color: Colors.green[800],
                            ),
                            Text(
                              'Ավելացնել նոր հեռախոսահամար',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 15.0, color: Colors.green[800],
                                decorationColor: Colors.green[
                                    800], //text decoration 'underline' color
                                decorationThickness: 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                      onPressed: () {},
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
                      controller: _profColorCarController,
                      decoration: InputDecoration(
                        helperText: 'Մուտքագրել հայերեն տառերով',
                        fillColor: Colors.black12,
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _profColorCarController.text = '';
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
                    TextButton(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Row(
                          children: [
                            Icon(
                              Icons.add_circle_outline,
                              color: Colors.green[800],
                            ),
                            Text(
                              'Ավելացնել նոր մեքենա',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 15.0, color: Colors.green[800],
                                decorationColor: Colors.green[
                                    800], //text decoration 'underline' color
                                decorationThickness: 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NewCarPage()));
                      },
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                        child: Text(
                          'Փոխել գաղտնաբառը',
                          style: TextStyle(
                            fontSize: 18, color: Colors.green[800],

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
                                  builder: (context) => ChangePassPage()));
                        },
                      ),
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
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: IconButton(
                            icon: Icon(
                              Icons.home_outlined,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyCards()));
                            })),
                    Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: IconButton(
                            icon: Icon(
                              Icons.person_outline,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              print("Pressed");
                            })),
                    Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: IconButton(
                            icon: Icon(
                              Icons.list_alt_outlined,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyCards()));
                            })),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Widget uploadImage() {
    return Container(
      height: 100.0,
      width: 300,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          Text(
            'Choose Profile photo',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(
                  Icons.camera,
                ),
                onPressed: () {
                  selectImage(
                    imageSource: ImageSource.camera,
                  ).then((value) {
                    setState(() {
                      _file = value;
                    });
                  }).whenComplete(
                    () => Navigator.pop(context),
                  );
                },
              ),
              Text('Camera'),
              SizedBox(
                width: 30,
              ),
              IconButton(
                icon: Icon(
                  Icons.image,
                ),
                onPressed: () async {
                  await selectImage(imageSource: ImageSource.gallery)
                      .then((value) {
                    setState(() {
                      _file = value;
                    });
                  }).whenComplete(
                    () => Navigator.pop(context),
                  );
                },
              ),
              Text('Gallery'),
            ],
          ),
        ],
      ),
    );
  }
}

