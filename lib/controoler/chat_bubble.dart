import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isSentByMe;
  final String? profileImageUrl; // Optional profile image URL

  ChatBubble({
    required this.message,
    required this.isSentByMe,

    this.profileImageUrl, required Color backgroundColor,


  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isSentByMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Display profile image only if the message is not sent by the current user
        if (!isSentByMe)
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: CircleAvatar(
              radius: 18,
              backgroundImage: profileImageUrl != null
                  ? AssetImage(profileImageUrl!)
                  : AssetImage('assets/image/profesional2.jpg') as ImageProvider,
            ),
          ),
        Flexible(
          child: Container(
            decoration: BoxDecoration(
              color: isSentByMe ? Color(0xFFE1B378) : Color(0xFFDEC4B4),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
                bottomLeft: isSentByMe ? Radius.circular(12) : Radius.circular(0),
                bottomRight: isSentByMe ? Radius.circular(0) : Radius.circular(12),
              ),
            ),
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            child: Text(
              message,
              style: TextStyle(
                color: isSentByMe ? Colors.white : Colors.black,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}