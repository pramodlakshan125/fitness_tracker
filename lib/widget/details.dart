import 'package:flutter/material.dart';

class Detais extends StatefulWidget {
  const Detais({super.key});

  @override
  State<Detais> createState() => _DetaisState();
}

class _DetaisState extends State<Detais> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Details Screen")));
  }
}
