import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learngetx/authentication/controllers/login_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent.withOpacity(.3),
        title: const Text(
          "Login Screen",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: loginController.emailController.value,
                decoration: const InputDecoration(hintText: "Email"),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: loginController.passwordController.value,
                decoration: const InputDecoration(hintText: "Password"),
              ),
              const SizedBox(
                height: 40,
              ),
              Obx(
                () => InkWell(
                  onTap: () {
                    loginController.loginApi();
                  },
                  child: loginController.loading.value
                      ? CircularProgressIndicator(
                          color: Colors.deepPurpleAccent.withOpacity(.3),
                        )
                      : Container(
                          height: 45,
                          color: Colors.deepPurpleAccent.withOpacity(.3),
                          child: const Center(
                            child: Text(
                              "Login",
                              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                            ),
                          ),
                        ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
