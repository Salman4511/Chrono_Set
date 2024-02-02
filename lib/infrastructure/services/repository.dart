import 'dart:math';

class ClickResult {
  final dynamic sec;
  final dynamic num;
  final dynamic count;

  ClickResult(this.sec, this.num, this.count);
}

class Repository {
  dynamic sec;
  dynamic num;
  dynamic count=0;

  ClickResult onClick() {
    DateTime now = DateTime.now();
    sec = now.second;
    print(sec);
    Random random = Random();
    num = random.nextInt(60);
    count++;
    print(count);

    return ClickResult(sec, num, count);
  }
}