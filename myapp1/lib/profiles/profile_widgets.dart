import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget imageProfile() {
  return Center(
    child: Stack(
      children: [
        CircleAvatar(
          radius: 85,
          backgroundImage: AssetImage('assets/images/myphoto.webp'),
        ),
        Positioned(
          bottom: 20.0,
          right: 20.0,
          child: InkWell(
            onTap: (){

            //  showBottomSheet(context: context, builder: builder);
            },
            child: Icon(
              Icons.camera_alt,
              color: Colors.teal,
              size: 28.0,
            ),
          ),
        )
      ],
    ),
  );
}

// Widget myTextFormFiled(){
//   return TextFormField(
//        keyboardType: TextInputType.phone,
//       controller: _profPhoneController,
//       decoration: InputDecoration(
//         helperText: '(xxx)xxx-xxxx',
//         fillColor: Colors.black12,
//         prefixIcon: Icon(Icons.phone),
//         suffixIcon: IconButton(
//           onPressed: () {
//             setState(() {
//               _profPhoneController.text = '';
//             });
//           },
//           icon: Icon(Icons.delete_outline),
//         ),
//         hintText: 'Հեռախոսահամար',
//         labelText: 'Հեռախոսահամար*',
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.all(Radius.circular(5)),
//           borderSide: BorderSide(
//               color: Color.fromARGB(255, 168, 167, 167),
//               width: 1),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.all(Radius.circular(5)),
//           borderSide: BorderSide(
//               color: Color.fromARGB(255, 54, 99, 248),
//               width: 1),
//         ),
//       ),
//       inputFormatters: [
//         FilteringTextInputFormatter.digitsOnly
//       ],
//     ),
//
// }
