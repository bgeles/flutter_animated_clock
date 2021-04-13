import 'package:flutter/material.dart';
import 'package:flutter_animated_clock/clock_view.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    var formattedTime = DateFormat('HH:mm').format(now);
    var formattedDate = DateFormat('EEE, d MMMM').format(now);
    var timezoneString = now.timeZoneOffset.toString().split('.').first;

    var offsetSign = '';

    if (!timezoneString.startsWith('-')) {
      offsetSign = '+';
    }

    print(timezoneString);

    return Scaffold(
      backgroundColor: Color(0xFF2D2F41),
      body: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildMenuButton('Clock', 'assets/clock_icon.png'),
              buildMenuButton('Alarm', 'assets/alarm_icon.png'),
              buildMenuButton('Timer', 'assets/timer_icon.png'),
              buildMenuButton('Stopwatch', 'assets/stopwatch_icon.png'),
            ],
          ),
          VerticalDivider(
            color: Colors.white54,
            width: 1,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 32,
                vertical: 64,
              ),
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Clock',
                    style: TextStyle(
                        fontFamily: 'avenir',
                        color: Colors.white,
                        fontSize: 24),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                    formattedTime,
                    style: TextStyle(
                      fontFamily: 'avenir',
                      color: Colors.white,
                      fontSize: 64,
                    ),
                  ),
                  Text(
                    formattedDate,
                    style: TextStyle(
                        fontFamily: 'avenir',
                        color: Colors.white,
                        fontSize: 20),
                  ),
                  ClockView(),
                  Text(
                    'Timezone',
                    style: TextStyle(
                        fontFamily: 'avenir',
                        color: Colors.white,
                        fontSize: 24),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.language,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        'UTC' + offsetSign + timezoneString,
                        style: TextStyle(
                          fontFamily: 'avenir',
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding buildMenuButton(String title, String image) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: FlatButton(
        onPressed: null,
        child: Column(
          children: [
            Image.asset(
              image,
              scale: 1.5,
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              title ?? '',
              style: TextStyle(
                fontFamily: 'avenir',
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
