import 'package:flutter/material.dart';
import 'package:flutter_ui_designs/register_screen.dart';

import 'custom_text_form_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(color: Colors.white),
              child: Container(
                height: 300,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.elliptical(400, 150),
                    bottomLeft: Radius.elliptical(50, 0),
                  ),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1670502394307-fd0781f280e5?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Z3JlZW4lMjBsZWF2ZXMlMjB3YWxscGFwZXJ8ZW58MHx8MHx8fDA%3D"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            const Text(
              "Welcome Back",
              style: TextStyle(
                  fontSize: 35,
                  color: Color.fromARGB(255, 4, 109, 58),
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Login to your account",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey),
            ),
            const SizedBox(
              height: 30,
            ),
            const CustomTextFormField(
              icon: Icons.person,
              hint: "Full Name",
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomTextFormField(
              icon: Icons.lock,
              hint: "Password",
              suffixIcon: Icons.visibility_off,
              // character: " * ",
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Row(
                children: [
                  const Icon(
                    Icons.check_circle_outline,
                    size: 13,
                    color: Color.fromARGB(255, 4, 109, 58),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "Remember Me",
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Forget Password ?",
                      style: TextStyle(
                        color: Color.fromARGB(255, 4, 109, 58),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 50,
                width: 280,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: const Color.fromARGB(255, 4, 109, 58),
                ),
                child: const Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const RegisterScreen();
                    },
                  ),
                );
              },
              child: RichText(
                text: const TextSpan(
                    text: "Don't have an account?",
                    style: TextStyle(color: Colors.grey),
                    children: [
                      TextSpan(
                          text: "  Sign up",
                          style: TextStyle(
                            color: Color.fromARGB(255, 4, 109, 58),
                          ))
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
