import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://i.pinimg.com/originals/a9/a3/75/a9a3756f028df6637c64ec8bfca4fc62.png"),
          ),
        ),
        title: const Text("Scooby ❤️"),
      ),
    );
  }
}
