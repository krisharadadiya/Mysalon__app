import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mysalonapp_flutter/controoler/chat_bubble.dart';
import 'package:mysalonapp_flutter/utile/path/image_string_path.dart';

class KeyboardScreen extends StatefulWidget {
  const KeyboardScreen({Key? key}) : super(key: key);

  @override
  _KeyboardScreenState createState() => _KeyboardScreenState();
}

class _KeyboardScreenState extends State<KeyboardScreen> {
  final TextEditingController _controller = TextEditingController();
  late var chatBubble = ChatBubble(message: 'hoe Are You?', isSentByMe: true,backgroundColor: Color(0xFFE1B378),);
  final List<Map<String, dynamic>> _messages = [];
  List<String> randomReplies = [
    "That's interesting!",
    "I see.",
    "Can you tell me more?",
    "I'm not sure about that.",
    "Let's continue the conversation."
  ];

  void _sendMessage() {
    final String messageText = _controller.text.trim();
    if (messageText.isNotEmpty) {
      setState(() {
        _messages.add({
          'text': messageText,
          'isSentByMe': true,
        });
      });
      _controller.clear();
      // Simulate a response
      Future.delayed(const Duration(seconds: 1), () {
        setState(() {
          final randomreply =
              randomReplies[Random().nextInt(randomReplies.length)];
          _messages.add({'text': randomreply, 'isSentByMe': false});
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFE0CE),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(CupertinoIcons.back),
        ),
        title: Row(
          children: [
            CircleAvatar(
              radius: 18,
              backgroundImage: NetworkImage(
                  'https://plus.unsplash.com/premium_photo-1672691612717-954cdfaaa8c5?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmVzc2lvbmFsJTIwd29tYW58ZW58MHx8MHx8fDA%3D'),
            ),
            const SizedBox(width: 10),
            const Text(
              'Hiral Tank',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert_rounded,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(backlightimage),
              ),
            ),
          ),
          Column(
            children: [
              // Chat Messages
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: _messages.length,
                  itemBuilder: (context, index) {
                    final message = _messages[index];
                    final isSentByMe = message['isSentByMe'] as bool;
                    return Align(
                      alignment: isSentByMe
                          ? Alignment.centerRight
                          : Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: Row(
                          mainAxisAlignment: isSentByMe
                              ? MainAxisAlignment.end
                              : MainAxisAlignment.start,
                          children: [
                            if (!isSentByMe)
                              CircleAvatar(
                                radius: 18,
                                backgroundImage: NetworkImage(
                                    'https://plus.unsplash.com/premium_photo-1672691612717-954cdfaaa8c5?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmVzc2lvbmFsJTIwd29tYW58ZW58MHx8MHx8fDA%3D'),
                              ),
                            const SizedBox(width: 8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              decoration: BoxDecoration(
                                color: isSentByMe
                                    ? const Color(0xFFFFC78E)
                                    : const Color(0xFFE0E0E0),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: const Radius.circular(10),
                                  bottomRight: const Radius.circular(10),
                                  topLeft: isSentByMe
                                      ? const Radius.circular(10)
                                      : Radius.zero,
                                  topRight: !isSentByMe
                                      ? const Radius.circular(10)
                                      : Radius.zero,
                                ),
                              ),
                              child: Text(
                                message['text'] as String,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              // Input Box
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFC78E),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: TextField(
                          cursorColor: Colors.black,
                          controller: _controller,
                          decoration: const InputDecoration(
                            hintText: 'Type a message...',
                            border: InputBorder.none,
                          ),
                          onSubmitted: (value) => _sendMessage(),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: const Color(0xFFFFC78E),
                      child: IconButton(
                        icon: const Icon(
                          Icons.send,
                          color: Colors.black,
                        ),
                        onPressed: _sendMessage,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
