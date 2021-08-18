import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class WeekProgress extends StatelessWidget {
  final String text;
  final double value;

  const WeekProgress({Key key, this.text, this.value}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          CircularPercentIndicator(
            animation: true,
            radius: MediaQuery.of(context).size.width / 10,
            lineWidth: 5.0,
            percent: value,
            animateFromLastPercent: true,
            progressColor: Colors.green,
            circularStrokeCap: CircularStrokeCap.round,
          ),
          SizedBox(
            height: 10,
          ),
          Text(text)
        ],
      ),
    );
  }
}
