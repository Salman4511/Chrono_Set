import 'package:chrono_set/infrastructure/services/repository.dart';
import 'package:chrono_set/presentation/screens/home_screen/widgets/container_row_widget.dart';
import 'package:chrono_set/presentation/screens/home_screen/widgets/message_container.dart';
import 'package:chrono_set/shared/constants.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final int _duration = 5;
  final CountDownController _controller = CountDownController();

  Repository repo = Repository();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Home Page'),
          centerTitle: true,
          backgroundColor: kgrey),
      body: SafeArea(
          child: Column(
        children: [
          kheight20,
          ContainerRowWidget(
            currentSec: repo.sec.toString(),
            randomNum: repo.num.toString(),
          ),
          kheight50,
          MessageContainer(
            clicks: repo.count.toString(),
            currentSec: repo.sec.toString(),
            randomNum: repo.num.toString(),
          ),
          kheight50,
          CircularCountDownTimer(
            width: 200,
            height: 100,
            duration: _duration,
            fillColor: kgreen,
            ringColor: kWhite,
            controller: _controller,
            initialDuration: 0,
            strokeWidth: 10,
            strokeCap: StrokeCap.round,
            onComplete: () {
              _controller.start();
            },
            textFormat: CountdownTextFormat.MM_SS,
          ),
          kheight40,
          ElevatedButton(
            onPressed: () {
              setState(() {
                repo.onClick();
              });
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(kBlue),
            ),
            child: const Text(
              'Click',
              style: ktextstyle2,
            ),
          )
        ],
      )),
    );
  }
}
