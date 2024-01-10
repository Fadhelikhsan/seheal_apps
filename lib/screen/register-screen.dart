import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seheal_apps/component/my_button.dart';
import 'package:seheal_apps/component/text_field.dart';
import 'package:seheal_apps/services/auth/auth_service.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();

  void signUp() async {
    if (passwordController.text != confirmpasswordController.text) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Password tidak sesuai"),
        ),
      );
      return;
    }

    final authService = Provider.of<AuthService>(context, listen: false);

    try {
      await authService.signUpWithEmailandPassword(
        emailController.text,
        passwordController.text,
      );
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
                  "Let's Create an Account!",
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
                    controller: confirmpasswordController,
                    hintText: "Masukkan Password",
                    obsecureText: true),

                SizedBox(
                  height: 15,
                ),

                //Passw
                MyTextField(
                    controller: passwordController,
                    hintText: "Konfirmasi Password",
                    obsecureText: true),

                SizedBox(
                  height: 15,
                ),

                //Button
                MyButton(onTap: signUp, text: 'Register Now'),

                SizedBox(
                  height: 50,
                ),
                //regist

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already Have Account? "),
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        "Login Now",
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
