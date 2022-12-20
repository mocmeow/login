import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class LoginButton extends StatefulWidget {
  const LoginButton({super.key, required this.inputText});
  final String inputText;

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        minimumSize: const Size(400, 45),
      ),
      child: Text(widget.inputText),
      onPressed: () {
        setState(() {});
        signIn(context);
      },
    );
  }
}

class LoginInfor {
  int respCode;
  String respText;
  String token;
  UserInfo userInfo;

  LoginInfor(
      {required this.respCode,
      required this.respText,
      required this.token,
      required this.userInfo});

  factory LoginInfor.fromJson(Map<String, dynamic> json) {
    return LoginInfor(
      respCode: json["RespCode"],
      respText: json["RespText"],
      token: json["Token"],
      userInfo: UserInfo.fromJson(json["UserInfo"]),
    );
  }
}

class UserInfo {
  String? fullName;
  String? phone;
  String? center;
  String? employeeType;
  String? employeeCode;

  UserInfo(
      {required this.fullName,
      required this.phone,
      required this.center,
      required this.employeeType,
      required this.employeeCode});

  factory UserInfo.fromJson(Map<String, dynamic> json) {
    return UserInfo(
      fullName: json['FullName'],
      phone: json['Phone'],
      center: json['Center'],
      employeeType: json['EmployeeType'],
      employeeCode: json['EmployeeCode'],
    );
  }
}

LoginInfor loginInforFromJson(String str) =>
    LoginInfor.fromJson(jsonDecode(str));

Future<void> signIn(context) async {
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) {
        return Dialog(
          backgroundColor: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                CircularProgressIndicator(),
                SizedBox(height: 20),
                Text('Loading...'),
              ],
            ),
          ),
        );
      });

  if (passwordController.text.isNotEmpty && emailController.text.isNotEmpty) {
    final response = await http.post(
      Uri.parse('https://icpc1hn.work/CPC1HN/User/UserLogin'),
      body: ({
        'UserName': emailController.text,
        'Password': passwordController.text,
      }),
    );
    final loginInfor = loginInforFromJson(response.body);

    if (loginInfor.respCode == 0) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(loginInfor.respText),
          duration: const Duration(seconds: 2),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(loginInfor.respText),
          duration: const Duration(seconds: 2),
        ),
      );
    }
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Username hoặc email không được bỏ trống!'),
        duration: Duration(seconds: 2),
      ),
    );
  }
  Navigator.of(context).pop();
}
