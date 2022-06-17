import 'package:flutter/material.dart';
import 'package:qr_scanner_generator_app/qr_generator_page.dart';
import 'constants.dart';
import 'qr_code_buttons.dart';
import 'qr_scanner_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  
  void qRScannerNavigation(){
    
    Navigator.push(context, MaterialPageRoute(builder: (context)=>QRScanner()));
    
  }

  void qRGeneratorNavigation(){
    Navigator.push(context,MaterialPageRoute(builder: (context)=>QRGeneratorPage()));
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(kAppBarName,style: kAppBarTitleTextStyle,)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.fromLTRB(45,0,5,0),child: QrButtton(title: 'QR SCAN',func: qRScannerNavigation,sizee:300,)),
          SizedBox(height: 20,),
          Padding(padding: EdgeInsets.fromLTRB(45,0,5,0),child: QrButtton(title: 'QR GEN',func: qRGeneratorNavigation,sizee: 300,)),
        ],
      ),

    );
  }
}
