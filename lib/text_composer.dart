import 'package:flutter/material.dart';

class TextComposer extends StatefulWidget {
  const TextComposer({super.key});

  @override
  State<TextComposer> createState() => _TextComposerState();
}

class _TextComposerState extends State<TextComposer> {
  bool _isComposing = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: <Widget>[
          const IconButton(
            icon: Icon(Icons.photo_camera),
            onPressed: (vazio),
          ),
          Expanded(
            child: TextField(
              decoration:
                  const InputDecoration.collapsed(hintText: "Enviar Mensagem"),
              onChanged: (text) {
                setState(() {
                  _isComposing = text.isNotEmpty;
                });
              },
              onSubmitted: (vazio) {},
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: _isComposing ? () {} : null,
          )
        ],
      ),
    );
  }
}

void vazio() {}
