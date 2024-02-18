import 'package:flutter/material.dart';

class PrisonerProfileCard extends StatefulWidget {
  const PrisonerProfileCard({super.key});

  @override
  State<PrisonerProfileCard> createState() => _PrisonerProfileCardState();
}

class _PrisonerProfileCardState extends State<PrisonerProfileCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).cardColor,
      child: Container(
        height: 150,
        width: 390,
        child: Column(
          children: [
            Row(
              children: [
                Container(),
                Column()
              ],
            ),
            Column()
          ],
        ),
      ),
    );
  }
}
