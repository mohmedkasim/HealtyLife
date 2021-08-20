import 'package:flutter/material.dart';
import 'package:gym_schedule/ExampleData.dart';
import 'package:gym_schedule/components/radial_gauge.dart';
import 'package:gym_schedule/components/user_account_container.dart';
import 'package:gym_schedule/components/week_progress.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 25),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/healthy.png',
                          width: 40,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Healthy Life",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(
                                "This week record",
                                style: TextStyle(color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    UserContainer()
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(maxHeight: 70),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      primary: false,
                      shrinkWrap: true,
                      itemCount: dailyProgress.length,
                      itemBuilder: (context, index) {
                        return WeekProgress(
                            text: dailyProgress[index].text,
                            value: dailyProgress[index].value);
                      }),
                ),
                RadialGauge(),
                SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Daily",
                      style: TextStyle(color: Colors.grey[400]),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          "Weekly",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(41, 73, 126, 1)),
                        ),
                        Icon(
                          Icons.arrow_drop_up_rounded,
                          color: Color.fromRGBO(41, 73, 126, 1),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Monthly",
                      style: TextStyle(color: Colors.grey[400]),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
