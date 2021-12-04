import 'package:adventofcode2021/inputs/depths.dart';

import 'inputs/depths.dart' as Depths;

class Day1 {
  void task1() {
    print('Solution to task 1');

    var depths = Depths.DEPTHS;
    var count = 0;

    depths.asMap().forEach((i, value) {
      if (i > 0 && value > depths[i - 1]) {
        count++;
      }
    });

    print('Count is: $count');
  }

  void task2() {
    print('Solution to task 2');

    var depths = Depths.DEPTHS;
    var count = 0;
    var sum = -1;
    var prevSum = -1;

    depths.asMap().forEach((i, value) {
      if (i > 0 && i < depths.length - 2) {
        sum = depths[i] + depths[i + 1] + depths[i + 2];
        print(depths[i]);
        print(depths[i+1]);
        print(depths[i+2]);
        print('Prev sum: $prevSum');
        print('Current sum: $sum');
        if (sum > prevSum) {
          count++;
        }
        prevSum = sum;
        sum = 0;
      }
    });
    print('Count is: $count');
  }
}
