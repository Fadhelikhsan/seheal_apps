import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seheal_apps/component/my_button.dart';
import 'package:seheal_apps/component/text_field.dart';
import 'package:seheal_apps/services/auth/auth_service.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({super.key, this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signIn() async {
    //get auth service
    final authService = Provider.of<AuthService>(context, listen: false);

    try {
      await authService.signInWithEmailandPassword(
          emailController.text, passwordController.text);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.toString()),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                //logo
                Icon(
                  Icons.health_and_safety_rounded,
                  size: 80,
                  color: Colors.greenAccent,
                ),

                //Login
                Text(
                  "Wellcome Back",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(
                  height: 20,
                ),
                //Email
                MyTextField(
                    controller: emailController,
                    hintText: "Masukkan Email",
                    obsecureText: false),

                SizedBox(
                  height: 10,
                ),
                //Passw
                MyTextField(
                    controller: passwordController,
                    hintText: "Masukkan Password",
                    obsecureText: true),

                SizedBox(
                  height: 15,
                ),
                //Button
                MyButton(onTap: signIn, text: 'Login Now'),

                SizedBox(
                  height: 50,
                ),
                //regist

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Dont have account? "),
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        "Register Now",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[500],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
