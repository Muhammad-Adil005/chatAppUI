import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  final bool isSentByMe;
  final String text;
  final String time;

  const ChatMessage({
    super.key,
    required this.isSentByMe,
    required this.text,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10.0),
      child: Row(
        mainAxisAlignment:
            isSentByMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            //margin: isSentByMe ? const EdgeInsets.only(left: 8.0) : const EdgeInsets.only(right: 8.0),
            padding:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
            decoration: BoxDecoration(
              color: isSentByMe
                  ? const Color(0xffF3F6F9)
                  : const Color(0xff2E528D),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(13),
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Column(
              crossAxisAlignment: isSentByMe
                  ? CrossAxisAlignment.end
                  : CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      text,
                      style: TextStyle(
                        fontSize: 16.0,
                        color:
                            isSentByMe ? const Color(0xff1c2028) : Colors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      time,
                      style: TextStyle(
                        fontSize: 10.0,
                        color:
                            isSentByMe ? const Color(0xff8F949E) : Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/*import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  final bool isSentByMe;
  final String text;
  final String time;

  const ChatMessage({
    super.key,
    required this.isSentByMe,
    required this.text,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    final messageColor = isSentByMe ? Color(0xffF3F6F9) : Color(0xff2E528D);
    final textColor = isSentByMe ? Colors.black : Colors.white;
    final timeColor = isSentByMe ? Color(0xff8F949E) : Colors.white;

    return Align(
      alignment: isSentByMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10.0),
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 14.0),
        decoration: BoxDecoration(
          color: messageColor,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: IntrinsicWidth(
          child: Column(
            crossAxisAlignment:
                isSentByMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: TextStyle(
                  fontSize: 16.0,
                  color: textColor,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(height: 5), // Space between message text and time
              Text(
                time,
                style: TextStyle(
                  fontSize: 10.0,
                  color: timeColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}*/
