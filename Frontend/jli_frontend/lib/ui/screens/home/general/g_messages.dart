import 'package:flutter/material.dart';

class GMessagesScreen extends StatefulWidget {
  const GMessagesScreen({super.key});

  @override
  State<GMessagesScreen> createState() => _GMessagesScreenState();
}

class _GMessagesScreenState extends State<GMessagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('General Messages Screen'),
    );
  }
}
