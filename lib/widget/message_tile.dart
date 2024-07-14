import 'package:flutter/material.dart';

class MessageTile extends StatefulWidget {
  final String message;
  final bool sentByMe;
  final String time;

  const MessageTile(
      {Key? key,
      required this.message,
      required this.sentByMe,
      required this.time})
      : super(key: key);

  @override
  State<MessageTile> createState() => _MessageTileState();
}

class _MessageTileState extends State<MessageTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: 4,
          bottom: 4,
          left: widget.sentByMe ? 0 : 24,
          right: widget.sentByMe ? 24 : 0),
      alignment: widget.sentByMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Column(
        crossAxisAlignment:
            widget.sentByMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Container(
            margin: widget.sentByMe
                ? const EdgeInsets.only(left: 30)
                : const EdgeInsets.only(right: 30),
            padding:
                const EdgeInsets.only(top: 17, bottom: 17, left: 20, right: 20),
            decoration: BoxDecoration(
                borderRadius: widget.sentByMe
                    ? const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      )
                    : const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                color: widget.sentByMe
                    ? Theme.of(context).primaryColor
                    : Colors.grey[700]),
            child: Text(
              widget.message,
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 16, color: Theme.of(context).colorScheme.onPrimary),
            ),
          ),
          Text(
            widget.time,
            style: TextStyle(
                fontSize: 7, color: Theme.of(context).colorScheme.onSecondary),
          )
        ],
      ),
    );
  }
}
