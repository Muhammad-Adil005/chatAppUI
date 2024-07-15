import 'package:chat_app/chat_screen/reusable_text_field/reusable_text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'chat_message/chat_message.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'John Doe',
          style: GoogleFonts.manrope(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: const Color(0xff13161B),
            //fontStyle: FontStyle.italic,
          ),
        ),
        titleSpacing: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Color(0xff989DAD),
              size: 20,
            ),
            onPressed: () {
              // Handle back action
            },
          ),
        ),
        actions: const [
          // Add actions if necessary
        ],
      ),
      body: Column(
        children: [
          const Divider(
            color: Color(0xffE5E8EB),
          ),
          const SizedBox(height: 5),
          Expanded(
            child: ListView(
              //reverse: true,
              children: const [
                ChatMessage(
                  isSentByMe: false,
                  text: 'Lorem ipsum dolor amet',
                  time: '09:23',
                ),
                ChatMessage(
                  isSentByMe: true,
                  text: 'Consectetur adipiscing eiusmod?',
                  time: '09:27',
                ),
                ChatMessage(
                  isSentByMe: true,
                  text: 'eiusmod tempor incididunt',
                  time: '09:27',
                ),
                ChatMessage(isSentByMe: false, text: 'Lorem ip', time: '09:23'),
                ChatMessage(
                  isSentByMe: true,
                  text: 'Lorem ipsum dolor amet ',
                  time: '09:27',
                ),
                ChatMessage(
                  isSentByMe: true,
                  text: 'Lorem ipsum dolor amet ',
                  time: '09:27',
                ),
                ChatMessage(
                  isSentByMe: true,
                  text: 'Lorem ipsum dolor amet ',
                  time: '09:27',
                ),
                ChatMessage(
                  isSentByMe: true,
                  text: 'Lorem ipsum dolor amet ',
                  time: '09:27',
                ),
                ChatMessage(
                  isSentByMe: true,
                  text: 'Lorem ipsum dolor amet ',
                  time: '09:27',
                ),
                ChatMessage(
                  isSentByMe: true,
                  text: 'Lorem ipsum dolor amet ',
                  time: '09:27',
                ),
                ChatMessage(
                  isSentByMe: true,
                  text: 'Lorem ipsum dolor amet ',
                  time: '09:27',
                ),
                ChatMessage(isSentByMe: false, text: 'Lorem ip', time: '09:23'),
                ChatMessage(isSentByMe: false, text: 'Lorem ip', time: '09:23'),

                // Add more messages here
              ],
            ),
          ),
          const Divider(
            color: Color(0xffE5E8EB),
          ),
          reusableTextField(context),
        ],
      ),
    );
  }
}
