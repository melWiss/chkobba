import 'dart:math' as math;

mixin AngleToRadianMixin {
  late final double angle;
  double get radian => angle * (math.pi / 180);
}