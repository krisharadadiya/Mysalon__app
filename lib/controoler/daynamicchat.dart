import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mysalonapp_flutter/controoler/onlinechatScreen.dart';
// import '../../screens/chat_screen.dart';
class DaynamicChatMainListView extends StatelessWidget {
  DaynamicChatMainListView({super.key});

  final List<Map<String, dynamic>> chatList = [
    {
      "name": "Ayesha",
      "message": "Video",
      "time": "11:32",
      "photoUrl": "assets/image/ayesha.jpeg",
      "isGroup": false
    },
    {
      "name": "Dog Walk Meetups",
      "message": "Jordan: Who's free around...",
      "time": "10:04",
      "photoUrl": "assets/image/group.jpeg",
      "isGroup": true
    },
    {
      "name": "Martin",
      "message": "I wonder who I can talk to about...",
      "time": "9:45",
      "photoUrl": "assets/image/martin.jpeg",
      "isGroup": false
    },
    {
      "name": "Greg",
      "message": "Hey, let me know when we can meet up",
      "time": "9:23",
      "photoUrl": "assets/image/greg.jpeg",
      "isGroup": false
    },
    {
      "name": "Andrea",
      "message": "GIF",
      "time": "8:37",
      "photoUrl": "assets/image/andrea.jpeg",
      "isGroup": false
    },
    {
      "name": "Gardening Club",
      "message": "Just got some new flower seeds...",
      "time": "Yesterday",
      "photoUrl": "assets/image/gardening_club.jpeg",
      "isGroup": true
    },
    {
      "name": "Micah",
      "message": "Wow! That's so amazing!",
      "time": "Yesterday",
      "photoUrl": "assets/image/micah.jpeg",
      "isGroup": false
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView.builder(
        itemCount: chatList.length,
        itemBuilder: (context, index) {
          final chat = chatList[index];
          return buildChatTile(
            chat["name"],
            chat["message"],
            chat["time"],
            chat["photoUrl"],
            isGroup: chat["isGroup"],
          );
        },
      ),
    );
  }

  Widget buildChatTile(String name, String message, String time, String photoUrl, {bool isGroup = false}) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.grey[300],
        backgroundImage: AssetImage(photoUrl),
        child: isGroup ? const Icon(Icons.group, color: Colors.white) : null,
      ),
      title: Text(name),
      subtitle: Text(message),
      trailing: Text(time, style: const TextStyle(color: Colors.grey)),
      onTap: () {
        Get.to(() => Onlinechatscreen(name: name, lastMessage: message, photoUrl: photoUrl));
      },
    );
  }

}