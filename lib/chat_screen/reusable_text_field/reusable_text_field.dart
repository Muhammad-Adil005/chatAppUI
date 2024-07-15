import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget reusableTextField(BuildContext context) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
    child: Row(
      children: [
        Expanded(
          child: Container(
            width: 339.0,
            height: 56.0,
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            decoration: BoxDecoration(
              color: const Color(0xffF3F6F9),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Center(
              child: TextField(
                decoration: InputDecoration.collapsed(
                  hintText: 'Thank You',
                  hintStyle: GoogleFonts.manrope(
                    color: Color(0xff090A0B),
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
                // onSubmitted: _handleSubmitted,
              ),
            ),
          ),
        ),
        const SizedBox(width: 8.0),
        // Send button container with specific styles
        Container(
          width: 48.0,
          height: 48.0,
          decoration: BoxDecoration(
            color: const Color(0xff2E528D),
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: IconButton(
            icon: const Icon(Icons.send, color: Colors.white),
            onPressed: () {
              // Handle send message
            },
          ),
        ),
      ],
    ),
  );
}
