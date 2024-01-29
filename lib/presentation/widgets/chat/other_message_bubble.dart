import 'package:flutter/material.dart';

class OtherMessageBubble extends StatelessWidget {
  const OtherMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              color: colors.secondary, borderRadius: BorderRadius.circular(20)),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Text(
              "Hola gordis",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        // const SizedBox(
        //   height: 5,
        // ),
        _ImageBubble()
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
          "https://yesno.wtf/assets/yes/3-422e51268d64d78241720a7de52fe121.gif",
          width: size.width * 0.7,
          height: 150,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
