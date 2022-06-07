import 'package:flutter/material.dart';

class PresetProgramScreen extends StatefulWidget {
  PresetProgramScreen({Key? key}) : super(key: key);

  @override
  State<PresetProgramScreen> createState() => _PresetProgramScreenState();
}

class _PresetProgramScreenState extends State<PresetProgramScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('PresetProgramScreen')),
    );
  }
}
