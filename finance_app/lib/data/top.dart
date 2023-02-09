import 'package:finance_app/data/1.dart';

// ignore: non_constant_identifier_names
List<money> geter_top() {
  // ignore: non_constant_identifier_names
  money snap_food = money();
  snap_food.time = 'jan 30,2022';
  snap_food.image = 'mac.jpg';
  snap_food.buy = true;
  snap_food.fee = '- \$ 100';
  snap_food.name = 'macdonald';
  money snap = money();
  snap.image = 'cre.png';
  snap.time = 'today';
  snap.buy = true;
  snap.name = 'Transfer';
  snap.fee = '- \$ 60';

  return [snap_food, snap];
}
