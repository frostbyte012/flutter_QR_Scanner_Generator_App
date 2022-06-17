import 'package:flutter/material.dart';
import 'package:qr_scanner_generator_app/constants.dart';

class QrButtton extends StatefulWidget {
  const QrButtton({
    required this.title,
    required this.func,
    required this.sizee,

});

  final double sizee;
  final String title;
  final Function func;

  @override
  State<QrButtton> createState() => _QrButttonState();
}

class _QrButttonState extends State<QrButtton> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: RawMaterialButton(
         child: Text(widget.title,style: kQRGeneratorButtonTextStyle,),
         onPressed: (){
           widget.func();
         },
          constraints: BoxConstraints.tightFor(
            height: widget.sizee,
            width: widget.sizee,
          ),
          shape: CircleBorder(),
          fillColor: Color(0xFF4C4F5E),


        )
    );
  }
}
