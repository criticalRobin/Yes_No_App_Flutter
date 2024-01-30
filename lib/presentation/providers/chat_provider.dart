import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> mesages = [
    Message(text: "Hobis hije", fromWho: FromWho.me),
    Message(text: "Ya comiste?", fromWho: FromWho.me)
  ];

  Future<void> sendMessage(String text) async {
    // TODO: Implementar el envio de mensajes
  }
}
