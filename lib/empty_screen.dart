
import 'package:flutter/material.dart';
import 'global_variables.dart';

class EmptyScreen extends StatefulWidget {

  String? text;

  EmptyScreen({this.text});

  @override
  State<EmptyScreen> createState() => _EmptyScreenState();
}

class _EmptyScreenState extends State<EmptyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(widget.text!, style: tstyle(16, black, FontWeight.w400),),
      )
    );
  }
}