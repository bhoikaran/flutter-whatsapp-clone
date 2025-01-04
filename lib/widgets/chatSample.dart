import 'package:flutter/material.dart';
import 'package:custom_clippers/custom_clippers.dart';

class ChatSample extends StatelessWidget {
  const ChatSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 80.0),
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.receive),
            child: Container(
              padding: const EdgeInsets.only(
                  top: 10.0, bottom: 10, left: 25, right: 10),
              decoration: BoxDecoration(color: Colors.white),
              child: Text(
                "Hey Coder, How are you?",
                style: TextStyle(fontSize: 17),
              ),
            ),
          ),
        ),
        ClipPath(

          clipper: UpperNipMessageClipperTwo(MessageType.send),
          child: Container(
            margin: EdgeInsets.only(top: 20, left: 20, bottom: 15),
            padding: const EdgeInsets.only(
                top: 10.0, bottom: 10, left: 10, right: 20),
            decoration: BoxDecoration(color: Color(0xffe4fdca)),
            child: Text(
              "Hey programmer, I am great. Thanks for asking what about you?",
              style: TextStyle(fontSize: 17),
            ),
          ),
        ),
      ],
    );
  }
}
