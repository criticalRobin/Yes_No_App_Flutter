import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40.0),
    );
    final inputDecoration = InputDecoration(
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      helperText: "Escribe un mensaje",
      suffixIcon: IconButton(
        icon: const Icon(Icons.send_outlined),
        onPressed: () {},
      ),
    );

    return TextFormField(
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print("Submitted: $value");
      },
      onChanged: (value) {
        print("Changed: $value");
      },
    );
  }
}
