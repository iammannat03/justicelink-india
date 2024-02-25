import 'package:flutter/material.dart';
import 'package:jli_frontend/models/chatbot_message.dart';

class ChatBotMessageCard extends StatelessWidget {
  const ChatBotMessageCard({Key? key, required this.message}) : super(key: key);

  final ChatBotMessage message;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: Row(
        mainAxisAlignment: message.user == 'prisoner' ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Flexible(
            child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
              color: message.user == 'prisoner' ? Color.fromARGB(100, 192, 169, 169) : Colors.grey.withAlpha(100),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  message.message,
                  textAlign: TextAlign.start,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

