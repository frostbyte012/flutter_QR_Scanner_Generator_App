import 'package:flutter/material.dart';
import 'package:qr_scanner_generator_app/text_to_qr_generator_button.dart';
import 'constants.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRGeneratorPage extends StatefulWidget {
  const QRGeneratorPage({Key? key}) : super(key: key);

  @override
  State<QRGeneratorPage> createState() => _QRGeneratorPageState();
}

class _QRGeneratorPageState extends State<QRGeneratorPage> {

  final TextEditingController _enteredInfoString = new TextEditingController();

  String qr_generating_text = "";

  @override
  Widget build(BuildContext context) {


    void qrCreating(){

      setState(() {

        qr_generating_text=_enteredInfoString.toString();

      });


    }

    return Scaffold(
      appBar: AppBar(title: Text("QR GENERATOR",style: kAppBarTitleTextStyle,),),
      body: ListView(
        children: [

          Center(
            child: TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.white54,
                  filled: true,

              ),
              controller: _enteredInfoString,
              autofocus: false,
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.emailAddress,
              validator: (value){
                if(value!.isEmpty)
                  {
                    return ("Please Enter the Text.");
                  }
                return null;
              },
              onSaved: (value){
                _enteredInfoString.text=value!;
              },

            ),
          ),

          SizedBox(
            height: 20,
          ),



          Center(child:TextToQRGeneratorButton(title: 'GENERATE', func:qrCreating,sizee:100,)),

          SizedBox(
            height: 40,
          ),

          Center(
            child: Container(
                width: 500,
                height: 390,
                child:
            Padding(
              padding: EdgeInsets.fromLTRB(0,0, 0, 0),
              child: qr_generating_text!=""?QrImage(
                data: qr_generating_text,
                size: 300,
                version: QrVersions.auto,
                backgroundColor:Colors.white,
                gapless: false,
                  errorStateBuilder: (cxt, err) {
                    return Container(
                      child: Center(
                        child: Text(
                          "Uh oh! Something went wrong...",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    );
                  }
              ):Column(
                children: [
                  Padding(padding:EdgeInsets.fromLTRB(30,0,0,0),child: Text("Let's Generate a QR !",style: kQRGeneratorButtonTextStyle,)
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    'lib/images/downsign-qr-code.gif',
                     width: 300,
                    height: 300,
                  ),
                ],
              ),
             ),
            ),
          ),
        ],
      ),
    );
  }
}
