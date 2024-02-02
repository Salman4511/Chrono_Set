import 'package:chrono_set/shared/constants.dart';
import 'package:flutter/material.dart';

class MessageContainer extends StatefulWidget {
  final String currentSec;
  final String randomNum;
  final String clicks;
  const MessageContainer({
    super.key,
    required this.clicks,
    required this.currentSec,
    required this.randomNum,
  });

  @override
  State<MessageContainer> createState() => _MessageContainerState();
}

class _MessageContainerState extends State<MessageContainer> {
  dynamic score = 0;
  @override
  Widget build(BuildContext context) {
    return widget.currentSec != widget.randomNum
        ? Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
              height: 145,
              width: 400,
              decoration: BoxDecoration(
                color: messageContainerColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  kheight20,
                  const Row(
                    children: [
                      kwidth30,
                      Text('Sorry Try Again!', style: ktextstyle4),
                    ],
                  ),
                  kheight10,
                  const Divider(
                    color: Colors.blueGrey,
                  ),
                  Row(
                    children: [
                      kwidth30,
                      Text('Attempt : ${widget.clicks}', style: ktextstyle3),
                    ],
                  )
                ],
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
              height: 145,
              width: 400,
              decoration: BoxDecoration(
                color: kgreen,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  kheight20,
                  const Row(
                    children: [
                      kwidth30,
                      Text(
                        'Success:)',
                        style: ktextstyle4,
                      ),
                    ],
                  ),
                  kheight10,
                  const Divider(
                    color: Colors.blueGrey,
                  ),
                  Row(
                    children: [
                      kwidth30,
                      Text(
                        'Score : ${score++}/${widget.clicks}',
                        style: ktextstyle3,
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
  }
}
