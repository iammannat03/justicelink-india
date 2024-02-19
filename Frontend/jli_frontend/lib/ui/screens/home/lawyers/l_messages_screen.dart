import 'package:flutter/material.dart';

class LMessagesScreen extends StatefulWidget {
  const LMessagesScreen({super.key});

  @override
  State<LMessagesScreen> createState() => _LMessagesScreenState();
}

class _LMessagesScreenState extends State<LMessagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Lawyer Messages Screen'),
    );
  }
}