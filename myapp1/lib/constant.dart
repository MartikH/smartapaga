//import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'notifications/checkbox/checkBoxState.dart';

Color getColor(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
  };
  if (states.any(interactiveStates.contains)) {
    return Colors.white;
  }
  return Colors.green;
}

final allregiondata = CheckBoxState(title: 'Նշել բոլորը');

final List<CheckBoxState> regiondata = [
  CheckBoxState(title: 'Աջափնյակ'),
  CheckBoxState(title: 'Արաբկիր'),
  CheckBoxState(title: 'Ավան'),
  CheckBoxState(title: 'Դավթաշեն'),
  CheckBoxState(title: 'Էրեբունի'),
  CheckBoxState(title: 'Քանաքեռ-Զեյթուն'),
  CheckBoxState(title: 'Կենտրոն'),
  CheckBoxState(title: 'Մալաթիա-Սեբաստիա'),
  CheckBoxState(title: 'Նորք-Մարաշ'),
  CheckBoxState(title: 'Նոր Նորք'),
  CheckBoxState(title: 'Նուբարաշեն'),
  CheckBoxState(title: 'Շենգավիթ'),
];
TextStyle bodyTextStyle = const TextStyle(
    fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green);

int paymentControler = 1500;

//--------appMainPage text animate----------------------------------------

const colorizeColors = [
  Colors.purple,
  Colors.indigoAccent,
  Colors.yellow,
  Colors.red,
];

const colorizeTextStyle = TextStyle(
  fontSize: 17.0,
  fontFamily: 'Horizon',
);
//------------------------------------------------

//----------TextFormFilde animate--------------------------------------
class BorderPainter extends CustomPainter {
  final double controller;

  BorderPainter(this.controller);

  @override
  void paint(Canvas canvas, Size size) {
    double _sh = size.height; // For path shortage
    double _sw = size.width; // For path shortage
    double _line = 20.0; // Length of the animated line
    double _c1 = controller * 1; // Controller value for top and left border.
    double _c2 = controller >= 0.5
        ? (controller - 0.7) * 2
        : 0; // Controller value for bottom and right border.

    Paint paint = Paint()
      ..color = Colors.red
      // ..color = Color.fromARGB(255, 54, 99, 248)
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;

    Path _top = Path()
      ..moveTo(_sw * _c1 > _sw ? _sw : _sw * _c1, 0)
      ..lineTo(_sw * _c1 + _line >= _sw ? _sw : _sw * _c1 + _line, 0);

    Path _left = Path()
      ..moveTo(0, _sh * _c1 > _sh ? _sh : _sh * _c1)
      ..lineTo(0, _sh * _c1 + _line >= _sh ? _sh : _sh * _c1 + _line);

    Path _right = Path()
      ..moveTo(_sw, _sh * _c2)
      ..lineTo(
          _sw,
          _sh * _c2 + _line > _sh
              ? _sh
              : _sw * _c1 + _line >= _sw
                  ? _sw * _c1 + _line - _sw
                  : _sh * _c2);

    Path _bottom = Path()
      ..moveTo(_sw * _c2, _sh)
      ..lineTo(
          _sw * _c2 + _line > _sw
              ? _sw
              : _sh * _c1 + _line >= _sh
                  ? _sh * _c1 + _line - _sh
                  : _sw * _c2,
          _sh);

    canvas.drawPath(_top, paint);
    canvas.drawPath(_left, paint);
    canvas.drawPath(_right, paint);
    canvas.drawPath(_bottom, paint);
  }

  @override
  bool shouldRepaint(BorderPainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(BorderPainter oldDelegate) => false;
}
//-------------------------------------
//---------------MyClipper---------

class MyClipperAvatar extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromLTWH(0, 0, 165, 165);
  }

  bool shouldReclip(oldClipper) {
    return false;
  }
}
//-----------------------
