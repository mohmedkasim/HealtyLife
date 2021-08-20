import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym_schedule/ExampleData.dart';
import 'package:gym_schedule/components/radial_gauge.dart';
import 'package:gym_schedule/components/slider_input.dart';
import 'package:gym_schedule/components/user_account_container.dart';
import 'package:gym_schedule/components/week_progress.dart';
import 'package:gym_schedule/screens/record_day.dart';
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
          body: SingleChildScrollView(
            child: Padding(
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
                    height: 40,
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
                          SizedBox(height: 5),
                          Icon(
                            Icons.circle,
                            size: 5,
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
                  ),
                  SizedBox(height: 20),
                  SliderInput(
                    value: 150,
                    text: "Lose weight",
                    color: Color.fromRGBO(0, 218, 175, 1),
                  ),
                  SizedBox(height: 30),
                  SliderInput(
                    value: 180,
                    text: "Drinking water",
                    color: Color.fromRGBO(5, 68, 171, 1),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: Padding(
            padding:
                const EdgeInsets.only(right: 30, left: 30, top: 10, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  'assets/images/scale.svg',
                  width: 30,
                  color: Colors.grey,
                ),
                SvgPicture.asset(
                  'assets/images/apple-juice.svg',
                  width: 30,
                  color: Colors.grey,
                ),
                GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DailyRecord())),
                  child: SvgPicture.asset(
                    'assets/images/muscles.svg',
                    width: 30,
                    color: Colors.grey,
                  ),
                ),
                SvgPicture.asset(
                  'assets/images/jump-rope.svg',
                  width: 30,
                  color: Colors.grey,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
