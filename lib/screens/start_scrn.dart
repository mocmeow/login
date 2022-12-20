import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../common/start_login_button.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   systemOverlayStyle: const SystemUiOverlayStyle(
      //     statusBarColor: Color.fromARGB(255, 255, 255, 255),
      //     statusBarIconBrightness: Brightness.dark,
      //   ),
      //   toolbarHeight: 0,
      // ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/loginbg.png'),
                      fit: BoxFit.cover)),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  //color: Colors.red,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.fromLTRB(24, 0, 24, 40),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 150,
                        child: Image.asset('assets/brand.png'),
                      ),
                      const SizedBox(height: 40),
                      const LoginStart(inputText: 'Login'),
                      const SizedBox(height: 10),
                      const RegisterStart(inputText: 'Register'),
                      const SizedBox(height: 40),
                      const Center(
                        child: Text(
                          'Continue as a Guest',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Color.fromRGBO(53, 194, 193, 1),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
