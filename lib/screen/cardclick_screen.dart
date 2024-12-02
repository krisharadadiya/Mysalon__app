import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:mysalonapp_flutter/screen/card_countinue_screen.dart';
import 'package:mysalonapp_flutter/screen/login_singp_page.dart';
import 'package:mysalonapp_flutter/screen/loginscreen.dart';
import 'package:mysalonapp_flutter/screen/singup_page.dart';
import 'package:mysalonapp_flutter/utile/path/image_string_path.dart';

class CardclickScreen extends StatefulWidget {
  const CardclickScreen({super.key});

  @override
  State<CardclickScreen> createState() => _CardclickScreenState();
}

class _CardclickScreenState extends State<CardclickScreen>
    with TickerProviderStateMixin {
  late AnimationController _imageAnimationController;
  late Animation<Offset> _imageAnimation;

  late AnimationController _containerAnimationController;
  late Animation<Offset> _containerAnimation;

  @override
  void initState() {
    super.initState();
    currentindex = 1;

    _imageAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _imageAnimation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: const Offset(0, 0),
    ).animate(CurvedAnimation(
      parent: _imageAnimationController,
      curve: Curves.easeInOut,
    ));

    _containerAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    // Container animation (slide in from bottom to top)
    _containerAnimation = Tween<Offset>(
      begin: const Offset(0, 1), // Start off-screen (bottom)
      end: const Offset(0, 0),   // End at original position
    ).animate(CurvedAnimation(
      parent: _containerAnimationController,
      curve: Curves.easeInOut,
    ));

    // Start the image animation, then trigger container animation
    _imageAnimationController.forward().then((_) {
      _containerAnimationController.forward();
    });
  }
  int currentindex = 0;
    PhoneNumber number = PhoneNumber(isoCode: 'india');
    String phoneNumber = '';
  @override
  void dispose() {
    _imageAnimationController.dispose();  // Dispose of image controller
    _containerAnimationController.dispose();  // Dispose of container controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(backlightimage),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.to(const SingupPage(),
                          transition: Transition.downToUp,
                          duration: const Duration(seconds: 1));
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Color(0xFFFFE0CE),
                      size: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Enter About You',
                    style: TextStyle(
                      color: Color(0xFFFFE0CE),
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            // Image Animation: Slides from bottom to top
            SlideTransition(
              position: _imageAnimation,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(mobileimg),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            SlideTransition(
              position: _containerAnimation,
              child: Container(
                height: 500,
                width: 900,
                decoration: const BoxDecoration(
                  color: Color(0xFFFFE0CE),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: TextField(
                          style: const TextStyle(fontSize: 20),
                          cursorColor: const Color(0xFFE1B378),
                          decoration: InputDecoration(
                            hintText: 'Email',
                            hintStyle: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(color: Colors.black),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                color: Color(0xFFE1B378),
                                width: 3.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        height: 56,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: InternationalPhoneNumberInput(
                          onInputChanged: (value) {
                            setState(() {
                              // Handle phone number input
                            });
                          },
                          selectorConfig: const SelectorConfig(
                            setSelectorButtonAsPrefixIcon: true,
                            trailingSpace: false,
                            selectorType: PhoneInputSelectorType.DROPDOWN,
                          ),
                          cursorColor: Color(0xFFE1B378),
                          inputDecoration: const InputDecoration.collapsed(
                              hintText: 'Phone Number'),
                        ),
                      ),
                      const SizedBox(height: 15),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.resolveWith<Color?>(
                                (Set<MaterialState> states) {
                              if (states.contains(MaterialState.hovered)) {
                                return const Color(0XFFE1B378); // Hover color
                              }
                              return const Color(0XFFE1B378); // Default color
                            },
                          ),
                          elevation: MaterialStateProperty.resolveWith<double>(
                                (Set<MaterialState> states) {
                              if (states.contains(MaterialState.hovered)) {
                                return 15; // Elevate on hover
                              }
                              return 5; // Default elevation
                            },
                          ),
                          padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(horizontal: 115, vertical: 17),
                          ),
                        ),
                        onPressed: () {
                          Get.to(const CardCountinueScreen(),transition: Transition.downToUp,duration: Duration(seconds: 1));
                        },
                        child: const Text(
                          'Continue',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                const SizedBox(height: 20,),
                DotsIndicator(
                      dotsCount: 4,
                      position: currentindex, // Ensure position is a double
                      decorator: DotsDecorator(
                        size: const Size(15, 15),
                        // Size of inactive dots
                        activeSize: const Size(15, 15),
                        // Size of active dots
                        color: Colors.transparent,
                        // Inactive dot color
                        activeColor: Colors.black,
                        // Active dot color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: const BorderSide(
                              color: Colors.black,
                              width: 2.0), // Inactive dot border
                        ),
                        activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: const BorderSide(
                              color: Colors.black,
                              width: 2.0), // Active dot border
                        ),
                      ),
                    ),
                      const SizedBox(height: 10),
                      loginfunction(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget loginfunction() {
    return  Row(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 5, left: 55),
          child: Text(
            'Already A Member',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
        SizedBox(width: 10),
        Padding(
          padding: EdgeInsets.only(top: 5),
          child: InkWell(
            onTap: () {
              Get.to(LoginScreen(),transition: Transition.downToUp,duration: Duration(seconds: 1) );
            },
            child: Text(
              'Login',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
