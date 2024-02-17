import 'package:flutter/material.dart';

class GHomeScreen extends StatefulWidget {
  const GHomeScreen({super.key});

  @override
  State<GHomeScreen> createState() => _GHomeScreenState();
}

class _GHomeScreenState extends State<GHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('General Home Screen'),
    );
  }
}
