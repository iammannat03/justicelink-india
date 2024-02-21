import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

import '../../../../models/message.dart';
import '../../../widgets/message_card.dart';

class LMessagesScreen extends StatefulWidget {
  const LMessagesScreen({super.key});

  @override
  State<LMessagesScreen> createState() => _LMessagesScreenState();
}

class _LMessagesScreenState extends State<LMessagesScreen> {
  final List<Message> messagesList = [
    const Message(message: 'Good morning, Mr.U', user: 'lawyer'),
    const Message(message: 'This is Rahul from Legal Ac.', user: 'lawyer'),
    const Message(message: 'Gm, any news on my case?', user: 'prisoner'),
    const Message(
        message: 'I have just recieved word from the court', user: 'lawyer'),
    const Message(
        message: 'They are considering a pre-trial release', user: 'lawyer'),
    const Message(message: 'on bail', user: 'lawyer'),
    const Message(message: 'I wanted to discuss the process', user: 'lawyer'),
    const Message(message: 'and requirements from you', user: 'lawyer'),
    const Message(message: 'What do I need to do?', user: 'prisoner'),
    const Message(
        message: 'A few documents we need to prepare', user: 'lawyer'),
    const Message(
        message: 'including affidavits and character references',
        user: 'lawyer'),
    const Message(message: 'I will provide whatever u need.', user: 'prisoner'),
    const Message(
        message: 'I will arrange a video call shortly', user: 'lawyer'),
    const Message(message: 'to explain the details', user: 'lawyer'),
  ];

  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  FilePickerResult? result;
  List<PlatformFile>? files;

  void _addMessage(String message) {
    setState(() {
      messagesList.add(Message(message: message, user: 'prisoner'));
      _messageController.clear();
    });
    if (!_scrollController.hasClients) return;

    _scrollController.animateTo(
      250,
      duration: Duration(milliseconds: 500),
      curve: Curves.ease,
    );
  }

  void _sendFile(List<PlatformFile> files) {
    setState(() {
      messagesList.add(Message(message: '', user: 'prisoner', files: files));
      _messageController.clear();
    });
    if (!_scrollController.hasClients) return;

    _scrollController.animateTo(
      250,
      duration: Duration(milliseconds: 500),
      curve: Curves.ease,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SizedBox(
        width: MediaQuery.sizeOf(context).width * 0.93,
        child: FloatingActionButton(
          onPressed: () {},
          elevation: 3,
          backgroundColor: Color.fromARGB(255, 249, 242, 242),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.6,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                        controller: _messageController,
                        decoration: const InputDecoration(
                            // border: UnderlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(225, 208, 192, 192))),
                            border: InputBorder.none,
                            hintText: 'Enter you message',
                            hintStyle: TextStyle(
                                color: Color.fromARGB(255, 208, 192, 192),
                                fontWeight: FontWeight.w400)),
                        cursorColor: Colors.black,

                        // on
                      ),
                    )),
              ),
              Spacer(),
              IconButton(
                icon: const Icon(
                  Ionicons.folder_open_outline,
                  color: Color.fromARGB(255, 208, 192, 192),
                ),
                onPressed: () async {
                  result = await FilePicker.platform.pickFiles();
                  if (result != null) {
                    files = result!.files;
                    if (files!.isNotEmpty) {
                      // _messageController.text = files!.first.name;  remove afterwards
                    } else {}
                  } else {}
                },
              ),
              SizedBox(
                width: 5,
              ),
              IconButton(
                onPressed: () => result == null
                    ? _addMessage(_messageController.text)
                    : _sendFile(files!),
                icon: const Icon(Ionicons.send),
                color: Color.fromARGB(255, 208, 192, 192),
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              // color: Colors.green,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  // border: Border.all(color: Colors.black38, width: 2),
                  image: DecorationImage(
                      image: AssetImage("assets/some_lawyer_icon.png"),
                      fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'MANOJ KUMAR',
                style:
                    GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.w300),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Ionicons.videocam,
                  color: Color.fromARGB(200, 190, 169, 169))),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Ionicons.options,
                color: Color.fromARGB(200, 190, 169, 169),
              ))
          // SizedBox(width: 20,),
        ],
      ),
      body: Container(
        height: MediaQuery.sizeOf(context).height*0.72,
        child: ListView.builder(
          controller: _scrollController,


          itemCount: messagesList.length,
          itemBuilder: (BuildContext context, int index) {
            return MessageCard(
                message: messagesList[index], user: messagesList[index].user, side_ofuser: 'lawyer',);
          },

        ),
      ),

      // bottomNavigationBar: ,
    );
  }
}
