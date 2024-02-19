import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:jli_frontend/ui/widgets/message_card.dart';

import '../../../../models/message.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({super.key});

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  final TextEditingController _controller = TextEditingController();
  final List<Message> messagesList = [
    const Message(message: 'Good morning, Mr.U', user: 'lawyer'),
    const Message(message: 'This is Priya from Legal Ac.', user: 'lawyer'),
    const Message(message: 'Gm, any news on my case?', user: 'prisoner'),
    const Message(
        message: 'I have just recieved word from the court', user: 'lawyer'),
    const Message(
        message: 'They are considering a pre-trial release',
        user: 'lawyer'),
    const Message(message: 'on bail', user: 'lawyer'),
    const Message(
        message: 'I wanted to discuss the process',
        user: 'lawyer'),
    const Message(message: 'and requirements from you', user: 'lawyer'),
    const Message(message: 'What do I need to do?', user: 'prisoner'),
    const Message(message: 'A few documents we need to prepare', user: 'lawyer'),
    const Message(message: 'including affidavits and character references', user: 'lawyer'),
    const Message(message: 'I will provide whatever u need.', user: 'prisoner'),
    const Message(message: 'I will arrange a video call shortly', user: 'lawyer'),
    const Message(message: 'to explain the details', user: 'lawyer'),
  ];

  final TextEditingController _messageController = TextEditingController();
  void _addMessage(String message){

    setState(() {
      messagesList.add(Message(message: message, user: 'prisoner'));
      _messageController.clear();
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SizedBox(
        width: MediaQuery.sizeOf(context).width*0.93,
        child: FloatingActionButton(
          onPressed: () {},
          elevation: 3,
          backgroundColor: Color.fromARGB(255, 249, 242, 242),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                    width: MediaQuery.sizeOf(context).width*0.6,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                        controller: _messageController,
                        decoration: const InputDecoration(
                          // border: UnderlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(225, 208, 192, 192))),
                            border: InputBorder.none,
                            hintText: 'Enter you message',
                            hintStyle: TextStyle(color: Color.fromARGB(
                                255, 208, 192, 192),fontWeight: FontWeight.w400)
                        ),
                        cursorColor: Colors.black,

                        // on

                      ),
                    )),
              ),
              Spacer(),
              IconButton(icon: const Icon(Ionicons.folder_open_outline,color: Color.fromARGB(
                  255, 208, 192, 192),),
                onPressed: () {},),
              SizedBox(width: 5,),
              IconButton(onPressed: ()=>_addMessage(_messageController.text), icon: const Icon(Ionicons.send),color: Color.fromARGB(
                  255, 208, 192, 192),)
            ],
          ),

        ),
      ),
      body: Container(
        height: MediaQuery.sizeOf(context).height*0.72,
        child: ListView.builder(
          itemCount: messagesList.length,
          itemBuilder: (BuildContext context, int index) {
            return MessageCard(
                message: messagesList[index], user: messagesList[index].user);
          },
        ),
      ),
    );
  }
}
