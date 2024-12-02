import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mysalonapp_flutter/controoler/chat_bubble.dart';
import 'package:mysalonapp_flutter/controoler/userprofilescreen.dart';
import 'package:mysalonapp_flutter/utile/path/image_string_path.dart';

// import '../../controoler/chat/chat_bubble.dart';
// import '../../storage/user/user_profile.dart'; // Ensure this path is correct

class Onlinechatscreen extends StatefulWidget {
  final String name;
  final String lastMessage;
  final String photoUrl;

  // Constructor with parameters
  Onlinechatscreen(
      {required this.name, required this.lastMessage, required this.photoUrl});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<Onlinechatscreen> {
  TextEditingController messageController = TextEditingController();
  List<Map<String, dynamic>> messages = [];
  List<String> randomReplies = [
    "That's interesting!",
    "I see.",
    "Can you tell me more?",
    "I'm not sure about that.",
    "Let's continue the conversation."
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(backlightimage),
          fit: BoxFit.fill
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          toolbarHeight: 86,
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: const Color(0xFFFFE0CE),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          title: _buildAppBarTitle(),
        ),
        body: Column(
          children: [
            _buildMessageList(),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: _buildInputField(),
            ),
          ],
        ),
      ),
    );
  }

  Row _buildAppBarTitle() {
    return Row(
      children: [
        GestureDetector(
          onTap: _openUserProfile,
          child: CircleAvatar(
            backgroundImage: AssetImage(widget
                .photoUrl), // Use the photo URL passed from ChatMainListView
          ),
        ),
        const SizedBox(width: 10),
        GestureDetector(
          onTap: _openUserProfile,
          child: Text(
            widget.name, // Display the name passed from ChatMainListView
            style: const TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
        const Spacer(),
        _buildPopupMenu(),
      ],
    );
  }

  PopupMenuButton _buildPopupMenu() {
    return PopupMenuButton(
      color: const Color(0xFFE1B378),
      onSelected: (value) {},
      itemBuilder: (BuildContext context) {
        return [
          _popupMenuItem('Profile', _openUserProfile),
          _popupMenuItem('Favourites', () {}),
          _popupMenuItem('Clear Chat', _chatClear),
          _popupMenuItem('Block', _showBlockDialog),
        ];
      },
    );
  }

  PopupMenuItem _popupMenuItem(String title, VoidCallback onPressed) {
    return PopupMenuItem(
      child: TextButton(
        onPressed: () {
          Navigator.pop(context);
          onPressed();
        },
        child: Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }

  Expanded _buildMessageList() {
    return Expanded(
      child: ListView.builder(
        reverse: true,
        itemCount: messages.length,
        itemBuilder: (context, index) {
          bool isSentByMe = messages[index]['isSentByMe'];
          Color backgroundColor = isSentByMe
              ? Colors.amber.shade200 // Color for sent messages
              : Colors.blueGrey.shade100; // Color for random replies

          return ChatBubble(
            message: messages[index]['message'],
            isSentByMe: isSentByMe,
            profileImageUrl: isSentByMe ? null : widget.photoUrl,
            backgroundColor: backgroundColor,
          );
        },
      ),
    );
  }

  Row _buildInputField() {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            decoration: BoxDecoration(
              color: const Color(0xFFFFE0CE),
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: TextField(
              controller: messageController,
              decoration: const InputDecoration(
                hintText: "Type Your Massage.....",
                hintStyle: TextStyle(color: Colors.black),
                border: InputBorder.none,
              ),
              onChanged: (text) {
                setState(() {});
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0xFFFFE0CE),
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: Icon(
                messageController.text.isEmpty ? Icons.mic : Icons.send,
                color: Colors.black,
              ),
              onPressed: () {
                if (messageController.text.isNotEmpty) {
                  _sendMessage(messageController.text);
                  messageController.clear();
                  setState(() {});
                } else {
                  _startRecording();
                }
              },
            ),
          ),
        ),
      ],
    );
  }

  void _sendMessage(String message) {
    setState(() {
      messages.insert(0, {
        'message': message,
        'isSentByMe': true,
      });
    });

    Future.delayed(const Duration(seconds: 2), () {
      _receiveRandomReply();
    });
  }

  void _receiveRandomReply() {
    setState(() {
      String randomReply =
          randomReplies[Random().nextInt(randomReplies.length)];
      messages.insert(0, {
        'message': randomReply,
        'isSentByMe': false,
      });
    });
  }

  void _chatClear() {
    setState(() {
      messages.clear();
    });
  }

  void _showBlockDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Block'),
          content: const Text(
              'Blocked contacts cannot call or send you messages. This contact will not be notified.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                print('User blocked');
              },
              child: const Text('Block'),
            ),
          ],
        );
      },
    );
  }

  void _startRecording() {
    print('Starting recording...');
  }

  void _openUserProfile() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => UserProfileScreen(),
      ),
    );
  }
}
