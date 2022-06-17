import 'package:flutter/material.dart';
import 'package:qr_scanner_generator_app/constants.dart';

class QRScanner extends StatefulWidget {
  const QRScanner({Key? key}) : super(key: key);

  @override
  State<QRScanner> createState() => _QRScannerState();
}

class _QRScannerState extends State<QRScanner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('QR SCANNER',style: kAppBarTitleTextStyle,),),
    );
  }
}
