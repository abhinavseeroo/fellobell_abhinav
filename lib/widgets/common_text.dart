import 'package:flutter/cupertino.dart';

class CommonTextWidget extends StatelessWidget {
  final String text;
  const CommonTextWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return   Align(
        alignment: Alignment.topLeft,
        child: Text(text,
            style:
            const TextStyle(fontSize: 17, fontWeight: FontWeight.bold)));
  }
}
