import 'package:flutter/material.dart';
import 'package:mysalonapp_flutter/utile/path/image_string_path.dart';

class ProfileScreen extends StatelessWidget {
  final List<String> days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFE0CE),
        title: Row(
          children: [
            Icon(Icons.person, color: Colors.black), // Person icon
            SizedBox(width: 8),
            Text(
              "My Profile",
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.delete, color: Colors.black),
            onPressed: () {
              // Implement delete action here
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          // Background image layer
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(backlightimage), // Make sure the image asset is properly defined
              ),
            ),
          ),
          // Content layer with scrolling
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.person, size: 40, color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 16),
                  Center(
                    child: Text(
                      "Change Your Profile Picture\nChoose a Working Color",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white70),
                    ),           ),
                  SizedBox(height: 16),
                  buildTextField("First Name"),
                  SizedBox(height: 10),
                  buildTextField("Last Name"),
                  SizedBox(height: 10),
                  buildDropdownField("Gender", ["Male", "Female", "Other"]),
                  SizedBox(height: 10),
                  buildTextField("Title"),
                  SizedBox(height: 10),
                  buildSwitchTile("Display on Company URL"),
                  SizedBox(height: 10),
                  buildTextField("Phone Number", keyboardType: TextInputType.phone),
                  SizedBox(height: 10),
                  buildTextField("Email", keyboardType: TextInputType.emailAddress),
                  SizedBox(height: 10),
                  buildTextField("Password", obscureText: true),
                  SizedBox(height: 10),
                  buildSwitchTile("Message Sending Status"),
                  SizedBox(height: 10),
                  buildTextField("Choose All Treatment"),
                  SizedBox(height: 10),
                  buildTextField("Date Of Birth"),
                  SizedBox(height: 20),
                  Text(
                    "Appointment Days",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  SizedBox(height: 10),

                  // Circular day selectors
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: days.map((day) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Color(0xFFE1B378),
                            child: Text(
                              day,
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                         );
                      }).toList(),
                    ),
                  ),
                  SizedBox(height: 20),

                  ElevatedButton(
                    onPressed: () {
                      // Save action
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFE1B378),
                    ),
                    child: Text("Save", style: TextStyle(color: Colors.black)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black,
    );
  }

  // Helper function to create a text field
  Widget buildTextField(String label, {bool obscureText = false, TextInputType keyboardType = TextInputType.text}) {
    return TextField(
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.white70),
        filled: true,
        fillColor: Colors.black.withOpacity(0.7),
        border: OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.amber),
        ),
      ),
      style: TextStyle(color: Colors.white),
    );
  }

  // Helper function to create a dropdown field
  Widget buildDropdownField(String label, List<String> items) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.white70),
        filled: true,
        fillColor: Colors.black.withOpacity(0.7),
        border: OutlineInputBorder(),
      ),
      dropdownColor: Colors.black,
      items: items
          .map((item) => DropdownMenuItem(
        value: item,
        child: Text(item, style: TextStyle(color: Colors.white)),
      ))
          .toList(),
      onChanged: (value) {},
      style: TextStyle(color: Colors.white),
    );
  }

  // Helper function to create a switch tile
  Widget buildSwitchTile(String title) {
    return SwitchListTile(
      title: Text(title, style: TextStyle(color: Colors.white70)),
      value: true,
      onChanged: (bool value) {},
      activeColor: Color(0xFFE1B378),
      tileColor: Colors.black.withOpacity(0.7),
    );
  }
}
