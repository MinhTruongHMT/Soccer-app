import 'package:flutter/material.dart';
import 'package:my_app/components/my_button.dart';
import 'package:my_app/components/my_textfield.dart';
import 'package:my_app/components/squate_tile.dart';
import 'package:my_app/pages/home_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  bool performLogin(String username, String password) {
    if (username == "a" && password == "a") {
      return true;
    } else {
      return false;
    }
  }

  void loginButtonPressed(BuildContext context) {
    String username = usernameController.text;
    String password = passwordController.text;

    if (performLogin(username, password)) {
      // Đăng nhập thành công, thực hiện hành động tiếp theo (ví dụ: chuyển đến màn hình tiếp theo)
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    } else {
      // Đăng nhập không thành công, hiển thị thông báo lỗi (ví dụ: sử dụng SnackBar)
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Đăng nhập không thành công.'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      body: SafeArea(
          child: Column(children: [
        const SizedBox(height: 10.0),
        //const Icon(Icons.lock, size: 100),
        const SquateTile(imagePath: 'assets/businessman.png'),
        const SizedBox(height: 50.0),
        Text(
          "Welcome back you've been missed!",
          style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
        ),
        const SizedBox(height: 10.0),
        MyTextfield(
          controller: usernameController,
          hint: 'username',
          obscureText: false,
        ),
        const SizedBox(height: 10.0),
        MyTextfield(
          hint: 'password',
          obscureText: true,
          controller: passwordController,
        ),
        const SizedBox(height: 10.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Forgot Password?",
                style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
              ),
            ],
          ),
        ),
        const SizedBox(height: 25.0),
        GestureDetector(
          onTap: ()=>loginButtonPressed(context),
          child: MyButton(name: usernameController.text),
        )
      ])),
    );
  }
}
