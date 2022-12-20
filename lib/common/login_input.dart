import 'package:flutter/material.dart';
import 'package:login_ui/common/login_button.dart';

class LoginPassInput extends StatefulWidget {
  const LoginPassInput({super.key});

  @override
  State<LoginPassInput> createState() => _LoginPassInputState();
}

class _LoginPassInputState extends State<LoginPassInput> {
  bool passenabled = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      //alignment: Alignment.centerRight,
      child: Stack(
        children: [
          TextField(
            controller: passwordController,
            obscureText: passenabled,
            onChanged: null,
            obscuringCharacter: '*',
            decoration: const InputDecoration(
              filled: true,
              fillColor: Color.fromARGB(45, 158, 158, 158),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromARGB(106, 158, 158, 158),
                  width: 1,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(6.0),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 53, 194, 194),
                  width: 1,
                ),
              ),
              hintText: 'Enter your password',
              hintStyle: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
            //color: Colors.grey,
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  child: Icon(
                      passenabled == true
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      size: 25,
                      color: Color.fromARGB(90, 112, 117, 117)),
                  onTap: () {
                    setState(
                      () {
                        if (passenabled) {
                          passenabled = false;
                        } else {
                          passenabled = true;
                        }
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LoginEmailInput extends StatelessWidget {
  const LoginEmailInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: TextField(
        controller: emailController,
        decoration: const InputDecoration(
          filled: true,
          fillColor: Color.fromARGB(45, 158, 158, 158),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromARGB(106, 158, 158, 158),
              width: 1,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(6.0),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromARGB(255, 53, 194, 194),
              width: 1,
            ),
          ),
          hintText: 'Enter your email',
          hintStyle: TextStyle(
            fontSize: 15,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
