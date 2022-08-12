import 'package:flutter/material.dart';

class AnswersPage extends StatefulWidget {
  const AnswersPage({Key? key}) : super(key: key);

  @override
  State<AnswersPage> createState() => _AnswersPageState();
}

class _AnswersPageState extends State<AnswersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Answers"),
        elevation: 0,
      ),
    );
  }
}
