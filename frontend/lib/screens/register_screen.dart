import 'package:flutter/material.dart';
import 'input_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryColor = Colors.lightBlue.shade400;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: const BoxDecoration(
                  color: Color(0xFFF2F2F2),
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(80),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 60),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.arrow_back, color: Colors.lightBlue),
                  const SizedBox(height: 30),
                  Text("Register", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: primaryColor)),
                  const SizedBox(height: 30),
                  const CustomInputField(label: 'Username'),
                  const SizedBox(height: 16),
                  const CustomInputField(label: 'Email'),
                  const SizedBox(height: 16),
                  const CustomInputField(label: 'Password', obscureText: true),
                  const SizedBox(height: 16),
                  const CustomInputField(label: 'Confirm Password', obscureText: true),
                  const SizedBox(height: 30),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        minimumSize: const Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      ),
                      child: const Text("Submit"),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
