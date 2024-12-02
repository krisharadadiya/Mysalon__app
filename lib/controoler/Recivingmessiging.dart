import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'chat_bubble.dart';
// import 'notification.dart';

class ReceivingMessages extends StatefulWidget {
  const ReceivingMessages({super.key});

  @override
  State<ReceivingMessages> createState() => _ReceivingMessagesState();
}

class _ReceivingMessagesState extends State<ReceivingMessages> {
  String? currentUserID;

  @override
  void initState() {
    super.initState();
    FirebaseMessaging.instance.requestPermission();
    setupPushNotifications();
    getCurrentUserID(); // Get the current user ID
  }

  void getCurrentUserID() {
    User? user = FirebaseAuth.instance.currentUser;
    setState(() {
      currentUserID = user?.uid;
    });
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection('chats')
          .orderBy('timestamp', descending: true)
          .snapshots(),
      builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (!snapshot.hasData) {
          return Center(child: CircularProgressIndicator());
        }
        return ListView(
          children: snapshot.data!.docs.map((doc) {
            return ChatBubble(
              backgroundColor: Color(0xFFE1B378),
              message: doc['message'],
              isSentByMe: doc['userID'] == currentUserID, // Use the actual user ID here
            );
          }).toList(),
        );
      },
    );
  }


    FirebaseMessaging messaging = FirebaseMessaging.instance;

    void setupPushNotifications() {
      FirebaseMessaging.onMessage.listen((RemoteMessage message) {
        print("Received message: ${message.notification?.title}");
        // Display or handle notification.
      });
    }
  }