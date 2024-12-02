import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _CardscreenState();
}

class _CardscreenState extends State<LoginScreen> {
  bool _ispasswordvisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Spacer(), // Pushes the content down to the center
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome',
                style: TextStyle(
                  color: Color(0xFFFFE0CE),
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 0.1,
          ),
          Text(
            'Login To Your Account',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Spacer(), // Pushes the content upwards from the bottom
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 450,
              width: double.infinity, // Full width to match the screen width
              decoration: BoxDecoration(
                color: Color(0xFFFFE0CE),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextField(
                        cursorColor: Color(0xFFE1B378),
                        decoration: InputDecoration(
                            hintText: 'Enter Username',
                            hintStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.black)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Color(0xFFE1B378), width: 2.0))),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextField(
                        cursorColor: Color(0xFFE1B378),
                        obscureText: !_ispasswordvisible,
                        decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(color: Colors.black)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    color: Color(0xFFE1B378), width: 2.0)),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _ispasswordvisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.black,
                              ),
                              onPressed: () {
                                setState(() {
                                  _ispasswordvisible = !_ispasswordvisible;
                                });
                              },
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Radio(
                          value: true,
                          groupValue: Icon(Icons.e_mobiledata),
                          onChanged: (value) {},
                        ),
                        Text(
                          'Remeber Me ',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Text(
                          'Forget Password ?',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 8,),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color?>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.hovered)) {
                              return Color(
                                  0XFFE1B378); // Color when hovered over
                            }
                            return Color(0XFFE1B378); // Default color
                          },
                        ),
                        elevation: MaterialStateProperty.resolveWith<double>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.hovered)) {
                              return 15; // Increase elevation on hover
                            }
                            return 5; // Default elevation
                          },
                        ),
                        padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 115, vertical: 17  ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Countinue',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold,fontSize: 16),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Expanded(
                        child: Divider(
                      color: Color(0XFFE1B378),
                    ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.resolveWith<Color?>(
                                (Set<MaterialState> states) {
                              if (states.contains(MaterialState.hovered)) {
                                return Color(
                                    0XFFE1B378); // Color when hovered over
                              }
                              return Color(0XFFE1B378); // Default color
                            },
                          ),
                          elevation: MaterialStateProperty.resolveWith<double>(
                                (Set<MaterialState> states) {
                              if (states.contains(MaterialState.hovered)) {
                                return 15; // Increase elevation on hover
                              }
                              return 5; // Default elevation
                            },
                          ),
                          padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 95, vertical: 17),
                          ),
                          // minimumSize: MaterialStateProperty.all(Size(30, 50))
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.g_mobiledata_outlined,size: 20,),
                            SizedBox(width: 10,),
                            Text(
                              'Countinue',
                              style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.bold,fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),SizedBox(height: 10,)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
