import 'package:flutter/material.dart';
import 'package:login_ui/common/login_input.dart';
import 'package:login_ui/common/start_login_button.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:login_ui/screens/start_scrn.dart';
import '../common/login_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.fromLTRB(24, 24, 24, 24),
        color: Colors.white,
        child: Flexible(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 40),
                    alignment: Alignment.center,
                    width: 50,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: const Color.fromARGB(129, 158, 158, 158),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const StartScreen(),
                          ),
                        );
                      },
                      child: const InkWell(
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          size: 30,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    '''Welcome back!
Glad to see you, Again!''',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const LoginEmailInput(),
              const LoginPassInput(),
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.centerRight,
                child: const Text('Forgot Password?'),
              ),
              const SizedBox(
                height: 20,
              ),
              const LoginButton(inputText: 'Login'),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const Expanded(
                    flex: 1,
                    child: Divider(
                      color: Colors.grey,
                      thickness: 0.7,
                    ),
                  ),
                  Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                    alignment: Alignment.center,
                    child: const Text('Or Login with'),
                  ),
                  const Expanded(
                    flex: 1,
                    child: Divider(
                      color: Colors.grey,
                      thickness: 0.7,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlutterSocialButton(
                    onTap: () {},
                    mini: true,
                    buttonType: ButtonType.facebook,
                  ),
                  FlutterSocialButton(
                    onTap: () {},
                    mini: true,
                    buttonType: ButtonType.google,
                  ),
                  FlutterSocialButton(
                    onTap: () {},
                    mini: true,
                    buttonType: ButtonType.apple,
                  ),
                ],
              ),
              const SizedBox(
                height: 180,
              ),
              Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('Do not have an account?'),
                        Text(
                          ' Register Now!',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 53, 194, 193)),
                        )
                      ],
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
