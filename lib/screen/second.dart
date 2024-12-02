/*
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:mysalonapp_flutter/utile/path/image_string_path.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 35),
          child: FloatingActionButton(
            onPressed: () {},
            shape:
                CircleBorder(side: BorderSide(color: Colors.black, width: 3.0)),
            backgroundColor: Color(0xFFE1B378),
            child: Icon(
              Icons.dehaze_rounded,
              color: Colors.black,
              size: 32,
            ),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage(backlightimage))),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          width: 40,
                          child: Icon(
                            CupertinoIcons.back,
                            color: Colors.black,
                            size: 30,
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        CupertinoIcons.person_solid,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'My Profile',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 130,
                      ),
                      Icon(
                        CupertinoIcons.delete_solid,
                        color: Colors.black,
                        size: 30,
                      )
                    ],
                  ),
                  filled: true,
                  fillColor: Color(0xFFFFE0CE),
                  hintStyle: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 175,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(prorec))),
                  child: Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 3.0,
                                color: Color(0xFFFFE0CE),
                              ),
                            ),
                            child: Icon(
                              CupertinoIcons.person,
                              color: Color(0xFFFFE0CE),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Change Your Profile Picture',
                          style: TextStyle(
                              color: Color(0xFFFFE0CE),
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Text(
                          'choose Your Working Color',
                          style: TextStyle(
                              color: Color(0xFFFFE0CE),
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              _buildTextField(hintText: 'First Name'),
              SizedBox(height: 10,),
              _buildTextField(hintText: 'Last Name'),
              SizedBox(height: 10,),
              _buildTextField(hintText: 'Gender'),
              SizedBox(height: 10,),
              _buildTextField(hintText: 'Title'),
              SizedBox(height: 10,),
              _buildTextField(hintText: 'First Name'),
              SizedBox(height: 10,),
              _phonenumber(),
              _buildTextField(hintText: 'Email'),
              SizedBox(height: 10,),
              _buildTextField(hintText: 'Password'),
              Spacer(),
              Row(
                children: [
                  Container(
                    height: 60,
                    width: 359,
                    decoration: const BoxDecoration(
                      color: Color(0xFFE1B378),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 20,
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          children: [
                            const Icon(
                              CupertinoIcons.home,
                              color: Colors.black,
                              size: 30,
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.calendar_today_outlined,
                                color: Colors.black,
                                size: 30,
                              ),
                            ),
                            const SizedBox(
                              width: 110,
                            ),
                            InkWell(
                              onTap: () {},
                              child: const Icon(
                                CupertinoIcons.list_number,
                                color: Colors.black,
                                size: 30,
                              ),
                            ),
                            const SizedBox(
                              width: 50,
                            ),
                            InkWell(
                              onTap: () {},
                              child: const Icon(
                                CupertinoIcons.ellipsis,
                                color: Colors.black,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
Widget _buildTextField({required String hintText, bool obscureText = false, Widget? suffixIcon}) {
    return TextField(
      cursorColor: Color(0xFFE1B378),
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.black)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  color: Color(0xFFE1B378), width: 2.0))),
    );
  }
  Widget _phonenumber (){
  return Container(
    height: 56,
    decoration: BoxDecoration(
      border: Border.all(),
      borderRadius: BorderRadius.circular(20),
    ),
    child: InternationalPhoneNumberInput(
      onInputChanged: (value) {
      },
      selectorConfig: const SelectorConfig(
        setSelectorButtonAsPrefixIcon: true,
        trailingSpace: false,
        selectorType: PhoneInputSelectorType.DROPDOWN,
      ),
      cursorColor: Color(0xFFE1B378),
      inputDecoration: const InputDecoration.collapsed(
          hintText: 'Phone Number',
        hintStyle: TextStyle(
          color: Colors.white
        )
      ),
    ),
  );
  }
///import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class ProfileScreen extends StatelessWidget {
//   const ProfileScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color(0xFFFFE0CE),
//         leading: IconButton(
//           icon: const Icon(CupertinoIcons.back, color: Colors.black),
//           onPressed: () {},
//         ),
//         title: const Text(
//           'My Profile',
//           style: TextStyle(color: Colors.black),
//         ),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.delete, color: Colors.black),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             CircleAvatar(
//               radius: 50,
//               backgroundColor: Colors.grey[300],
//               child: const Icon(Icons.person, size: 50, color: Colors.black54),
//             ),
//             const SizedBox(height: 8),
//             const Text(
//               'Change Your Profile Picture',
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             const Text(
//               'Choose A Working Color',
//               style: TextStyle(fontSize: 14, color: Colors.grey),
//             ),
//             const SizedBox(height: 20),
//             // Input Fields
//             _buildTextField(label: 'First Name *'),
//             const SizedBox(height: 10),
//             _buildTextField(label: 'Last Name *'),
//             const SizedBox(height: 10),
//             _buildTextField(label: 'Gender'),
//             const SizedBox(height: 10),
//             _buildTextField(label: 'Title'),
//             const SizedBox(height: 10),
//             _buildTextField(label: 'Fixed Commission Percentage(%)'),
//             const SizedBox(height: 10),
//             _buildTextField(label: 'Display On Company URL', suffixIcon: CupertinoSwitch(value: true, onChanged: (_) {})),
//             const SizedBox(height: 10),
//             Row(
//               children: [
//                 Container(
//                   width: 60,
//                   height: 50,
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Colors.black),
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   child: const Center(child: Text('+91')),
//                 ),
//                 const SizedBox(width: 10),
//                 Expanded(
//                   child: _buildTextField(label: 'Phone Number *'),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 10),
//             _buildTextField(label: 'Email'),
//             const SizedBox(height: 10),
//             _buildTextField(label: 'Password', obscureText: true),
//             const SizedBox(height: 10),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 const Text('Message Sending Status'),
//                 CupertinoSwitch(value: true, onChanged: (_) {}),
//               ],
//             ),
//             const SizedBox(height: 20),
//             const Text(
//               'Treatments | Offer',
//               style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//             ),
//             CheckboxListTile(
//               title: const Text('Choose All Treatments'),
//               value: true,
//               onChanged: (_) {},
//             ),
//             const SizedBox(height: 10),
//             const Text(
//               'Packages Offered',
//               style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 10),
//             _buildTextField(label: 'Package Name'),
//             const SizedBox(height: 10),
//             const Text(
//               'No Records Found',
//               style: TextStyle(color: Colors.grey),
//             ),
//             const SizedBox(height: 20),
//             const Text(
//               'Appointments Days',
//               style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//             ),
//             Wrap(
//               spacing: 10,
//               children: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
//                   .map((day) => ChoiceChip(
//                         label: Text(day),
//                         selected: false,
//                         onSelected: (selected) {},
//                       ))
//                   .toList(),
//             ),
//             const SizedBox(height: 20),
//             _buildTextField(label: 'Password', obscureText: true),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
//           BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: ''),
//           BottomNavigationBarItem(icon: Icon(Icons.menu), label: ''),
//           BottomNavigationBarItem(icon: Icon(Icons.edit), label: ''),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildTextField({required String label, bool obscureText = false, Widget? suffixIcon}) {
//     return TextField(
//       obscureText: obscureText,
//       decoration: InputDecoration(
//         labelText: label,
//         border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//         suffixIcon: suffixIcon,
//       ),
//     );
//   }
// }
///Container(
//                     height: 70,
//                     width: 70,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       border: Border.all(color: Color(0xFFFFE0CE),width: 2.0)
//                     ),
//                   )
*/
/*
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final List<String> days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: Icon(Icons.delete, color: Colors.amber),
            onPressed: () {
              // Implement delete action here
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
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
                ),
              ),
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
              buildTextField("Treatments / Offer"),
              SizedBox(height: 10),
              buildTextField("Packages Offered"),
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
                        backgroundColor: Colors.amber, // Day circle background
                        child: Text(
                          day,
                          style: TextStyle(color: Colors.black), // Day text color
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
                  backgroundColor: Colors.amber,
                ),
                child: Text("Save", style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
        ),
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
        fillColor: Colors.black,
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
        fillColor: Colors.black,
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
      activeColor: Colors.amber,
      tileColor: Colors.black,
    );
  }
}
*/