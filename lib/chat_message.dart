import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  const ChatMessage(this.data, {super.key, required Text title});
  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: CircleAvatar(
              backgroundImage: NetworkImage(data['senderPhotoUrl']),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  data['senderName'],
                  style: const TextStyle(fontSize: 16),
                ),
                data['imgUrl'] != null
                    ? Image.network(
                        data['imgUrl'],
                        width: 250,
                      )
                    : Text(
                        data['text'],
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
