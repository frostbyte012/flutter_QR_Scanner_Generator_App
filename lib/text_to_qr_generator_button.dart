import 'package:flutter/material.dart';
import 'constants.dart';

class TextToQRGeneratorButton extends StatefulWidget {
  const TextToQRGeneratorButton({
    required this.title,
    required this.sizee,
    required this.func,
});
  final String title;
  final double sizee;
  final Function func;

  @override
  State<TextToQRGeneratorButton> createState() => _TextToQRGeneratorButtonState();
}

class _TextToQRGeneratorButtonState extends State<TextToQRGeneratorButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: (){widget.func();},
        child: Text("GENERATE",style: kQRButtonTextStyle,),
        color: Color(0xFF4C4F5E),
        minWidth: widget.sizee,


    );
  }
}
