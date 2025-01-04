import 'package:flutter/material.dart';

class ChatBottombar extends StatelessWidget {
  const ChatBottombar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Icon(
              Icons.emoji_emotions_outlined,
              color: Colors.black38,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
