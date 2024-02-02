import 'package:chrono_set/shared/constants.dart';
import 'package:flutter/material.dart';

class ContainerRowWidget extends StatefulWidget {
  final String currentSec;
  final String randomNum;

  const ContainerRowWidget({
    super.key,
    required this.currentSec,
    required this.randomNum,
  });

  @override
  State<ContainerRowWidget> createState() => _ContainerRowWidgetState();
}

class _ContainerRowWidgetState extends State<ContainerRowWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 22),
      child: Row(
        children: [
          Container(
            height: 130,
            width: 160,
            decoration: BoxDecoration(
                color: kBlue.withOpacity(0.2),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: kBlue)),
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Column(
                children: [
                  const Text(
                    'Current Second',
                    style: ktextstyle1,
                  ),
                  kheight10,
                  const Divider(
                    color: Colors.grey,
                  ),
                  Text(
                    widget.currentSec,
                    style: ktextstyle1,
                  )
                ],
              ),
            ),
          ),
          kwidth30,
          Container(
            height: 130,
            width: 160,
            decoration: BoxDecoration(
                color: kPurple.withOpacity(0.2),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: kPurple)),
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Column(
                children: [
                  const Text(
                    'Random Number',
                    style: ktextstyle1,
                  ),
                  kheight10,
                  const Divider(
                    color: kgrey,
                  ),
                  Text(
                    widget.randomNum,
                    style: ktextstyle1,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
