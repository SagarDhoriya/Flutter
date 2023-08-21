import 'package:my_project/Screen1.dart';
import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://images.unsplash.com/photo-1608057681073-9399f209e773?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE0fHx8ZW58MHx8fHx8&w=1000&q=80'),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,

          body: Stack(
            children: [
              Center(
                child: Container(
                  padding: const EdgeInsets.only(bottom: 350),
                  child: const Text(
                    'Wanderly',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontFamily: "Dosis",
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.only(bottom: 200),
                  child: const Text(
                    'Your Ultimate Companion For Seamless \n                    Travel Experiences',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontFamily: "Dosis",
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 500),
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Screen1()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          padding: const EdgeInsets.only(
                              left: 40, right: 40, top: 10, bottom: 10),
                          primary: Colors.green.shade600,
                          onPrimary: Colors.white,
                        ),
                        child: const Text(
                          ' Sign in with Phone Number ',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontFamily: "Schyler",
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      const SizedBox(height: 5),
                      ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Screen1()),
                          );
                        },
                        icon: const Icon(Icons.apple, color: Colors.white),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          padding: const EdgeInsets.only(
                              left: 55, right: 55, top: 8, bottom: 8),
                          primary: Colors.grey.shade800,
                          onPrimary: Colors.black,
                        ),
                        label: const Text(
                          'Sign in with Apple ',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontFamily: "Schyler",
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.only(top: 415, left: 50, right: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: const Text(
                          "Don't have any Account?",
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                              fontFamily: "Dosis",
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        child: TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            textStyle: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w900,
                                fontFamily: 'Dosis'),
                          ),
                          onPressed: () {},
                          child: const Text('Sign Up'),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.only(top: 635, left: 40, right: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: RichText(
                          text: const TextSpan(
                            text:
                            'By creating an account or signing in, you agree to \n        our',
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Dosis'),
                            children: <TextSpan>[
                              TextSpan(
                                  text: ' Terms of Service',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Dosis')),
                              TextSpan(text: ' and'),
                              TextSpan(
                                  text: ' Privacy Policy ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Dosis',
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
