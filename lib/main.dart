import 'package:flutter/material.dart';

void main() {
  const valueFrom = -2.0;
  const valueTo = 3.0;
  const step = 0.1;

  print("y = 13 - 5 * x + x^2\n");

  var x = valueFrom + step;

  double? minY;
  double? maxY;

  print("    X\t|\t    Y");
  print("----------------------------------------");


  while (x <= valueTo + 0.0001) {
    final y = calc(x);

    print("${x.toStringAsFixed(1)}\t|\t${y.toStringAsFixed(2)}");


    if (minY == null || y < minY) {
      minY = y;
    }
    if (maxY == null || y > maxY) {
      maxY = y;
    }

    x += step;
  }

  print("----------------------------------------");
  print("Найменше значення функції (min): ${minY?.toStringAsFixed(2)}");
  print("Найбільше значення функції (max): ${maxY?.toStringAsFixed(2)}");
}

double calc(double x) {
  return 13 - 5 * x + x * x;
}
