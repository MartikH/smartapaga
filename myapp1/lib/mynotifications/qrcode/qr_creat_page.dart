import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:myapp1/constant.dart';
import 'package:myapp1/mynotifications/qrcode/qr_scan_page.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRCreatePage extends StatefulWidget {
  const QRCreatePage({super.key});

  @override
  State<QRCreatePage> createState() => _QRCreatePageState();
}

class _QRCreatePageState extends State<QRCreatePage> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Code Generator'),
      ),
      body: Center(
        child: SingleChildScrollView(
            padding: EdgeInsets.all(24),
            child: Column(children: [
              Text('Qr code generator', style: TextStyle(fontSize: 16),),
              SizedBox(height: 20,),
              QrImage(
                version: QrVersions.auto,
                data: controller.text,
                size: 200,
                backgroundColor: Colors.white,
              ),
              SizedBox(
                height: 40,
              ),
              buildTextField(context),
              TextButton(
                child: Text(
                  'QR code scan',
                  style: TextStyle(color: Colors.green),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => QRScanPage()),
                  );
                },
              ),
            ])),
      ),
    );
  }

  Widget buildTextField(BuildContext context) => TextField(
        controller: controller,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        decoration: InputDecoration(
          hintText: '$paymentControler',
          hintStyle: TextStyle(color: Colors.grey),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.black),
          ),
          suffixIcon: IconButton(
            color: Colors.green,
            icon: Icon(
              Icons.done,
              size: 30,
            ),
            onPressed: () => setState(() {}),
          ),
        ),
      );
}
