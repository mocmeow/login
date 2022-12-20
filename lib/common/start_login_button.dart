import 'package:flutter/material.dart';
import 'package:login_ui/screens/login_scrn.dart';

class LoginStart extends StatefulWidget {
  const LoginStart({super.key, required this.inputText});
  final String inputText;

  @override
  State<LoginStart> createState() => _LoginStartState();
}

class _LoginStartState extends State<LoginStart> {
  @override
  Widget build(BuildContext context) {
    //String inputText = '';
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        minimumSize: Size(400, 45),
      ),
      child: Text(widget.inputText),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) => const LoginScreen()),
          ),
        );
      },
    );
  }
}

class RegisterStart extends StatefulWidget {
  const RegisterStart({super.key, required this.inputText});
  final String inputText;

  @override
  State<RegisterStart> createState() => _RegisterStartState();
}

class _RegisterStartState extends State<RegisterStart> {
  @override
  Widget build(BuildContext context) {
    //String inputText = '';
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        side: const BorderSide(
          color: Colors.black,
          width: 1,
        ),
        minimumSize: const Size(400, 45),
      ),
      child: Text(
        widget.inputText,
        style: const TextStyle(
          color: Colors.black,
        ),
      ),
      onPressed: () {},
    );
  }
}
