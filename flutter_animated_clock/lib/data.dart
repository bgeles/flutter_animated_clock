import 'package:flutter_animated_clock/constants/theme_data.dart';
import 'package:flutter_animated_clock/enums.dart';

import 'model/alarm_info.dart';
import 'model/menu_info.dart';

List<MenuInfo> menuItems = [
  MenuInfo(MenuType.clock,
      title: 'Clock', imageSource: 'assets/clock_icon.png'),
  MenuInfo(MenuType.alarm,
      title: 'Alarm', imageSource: 'assets/alarm_icon.png'),
  MenuInfo(MenuType.timer,
      title: 'Timer', imageSource: 'assets/timer_icon.png'),
  MenuInfo(MenuType.stopwatch,
      title: 'Stopwatch', imageSource: 'assets/stopwatch_icon.png'),
];

List<AlarmInfo> alarms = [
  AlarmInfo(DateTime.now().add(Duration(hours: 1)),
      description: 'Office', gradientColors: GradientColors.sky),
  AlarmInfo(DateTime.now().add(Duration(hours: 1)),
      description: 'Sport', gradientColors: GradientColors.sunset),
  AlarmInfo(DateTime.now().add(Duration(hours: 1)),
      description: 'Teste', gradientColors: GradientColors.fire),
];
