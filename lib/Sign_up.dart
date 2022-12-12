
import 'package:flutter/material.dart';
import 'package:stock_x/components/loginbuts.dart';
import 'package:stock_x/components/text_field.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:stock_x/log_in.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Center(
                child: Image(
                  height: 100,
                  image: AssetImage('images/stockx text.png'),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                                color: Colors.black87,
                                letterSpacing: 1.5,
                                fontWeight: FontWeight.w700,
                                fontSize: 14),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return Login();
                              }),
                            );
                          },
                          child: const Text(
                            'Log In',
                            style: TextStyle(
                                color: Colors.black87,
                                letterSpacing: 1.5,
                                fontWeight: FontWeight.w700,
                                fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                    const TextfieldArea(),
                    const Text(
                      'At least 8 characters, 1 uppercase letter, 1 number & 1 symbol',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    MaterialButton(
                      elevation: 0,
                      //padding: EdgeInsets.only(top: 18, bottom: 18),
                      minWidth: double.infinity,
                      height: 55,
                      color: Colors.black,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SignLoginButtons(),
                    const SizedBox(
                      height: 15,
                    ),
                    RichText(
                      text: const TextSpan(
                          style: TextStyle(fontSize: 12, color: Colors.black54),
                          children: [
                            TextSpan(
                              text: 'By signing up, you agree to the ',
                            ),
                            TextSpan(
                                text: 'Terms of Service ',
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold)),
                            TextSpan(
                              text: 'and ',
                            ),
                            TextSpan(
                                text: 'Privacy Policy',
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold)),
                          ]),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
