import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:io';

class ProfilePhotoScreen extends StatefulWidget {
  @override
  _ProfilePhotoScreenState createState() => _ProfilePhotoScreenState();
}

class _ProfilePhotoScreenState extends State<ProfilePhotoScreen> {
  File? _image;
  final picker = ImagePicker();
  String? profileImageUrl;

  Future<void> pickImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });

      // Upload the image to Firebase Storage
      uploadProfilePhoto(_image!);
    }
  }

  Future<void> uploadProfilePhoto(File image) async {
    try {
      final user = FirebaseAuth.instance.currentUser;
      if (user != null) {
        final storageRef = FirebaseStorage.instance
            .ref()
            .child('profile_photos')
            .child('${user.uid}.jpg');

        await storageRef.putFile(image);

        // Get the download URL and store it
        final downloadUrl = await storageRef.getDownloadURL();
        setState(() {
          profileImageUrl = downloadUrl;
        });

        // Optionally, store this URL in Firestore under user profile info
      }
    } catch (e) {
      print("Error uploading profile photo: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Upload Profile Photo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _image != null
                ? CircleAvatar(
              radius: 50,
              backgroundImage: FileImage(_image!),
            )
                : CircleAvatar(
              radius: 50,
              backgroundImage: profileImageUrl != null
                  ? NetworkImage(profileImageUrl!)
                  : AssetImage('assets/image/profesional2.jpg') as ImageProvider,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: pickImage,
              child: Text("Choose Photo"),
            ),
          ],
        ),
      ),
    );
  }
}