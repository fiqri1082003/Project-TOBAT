import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String label;
  final bool obscureText;

  const CustomInputField({
    super.key,
    required this.label,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(color: Colors.lightBlue, fontSize: 14),
        ),
        const SizedBox(height: 4),
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: 'Type here',
            contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            suffixIcon: obscureText
                ? const Icon(Icons.visibility_off, color: Colors.grey)
                : null,
          ),
        ),
      ],
    );
  }
}
