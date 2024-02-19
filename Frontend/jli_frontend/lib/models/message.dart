import 'package:file_picker/file_picker.dart';

class Message{
  const Message({required this.message, required this.user, this.files});

  final String message;
  final String user;
  final List<PlatformFile>? files;


}