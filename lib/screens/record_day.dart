import 'package:card_selector/card_selector.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:gym_schedule/components/lineChart.dart';
import 'package:gym_schedule/components/user_account_container.dart';

class DailyRecord extends StatefulWidget {
  @override
  _DailyRecordState createState() => _DailyRecordState();
}

class _DailyRecordState extends State<DailyRecord> {
  var list = ["1", "2", "3", "4", "5"];
  var colors = [
    Colors.blue,
    Colors.grey,
    Colors.red,
    Colors.cyan,
    Colors.amber
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [];
    for (int i = 0; i < 5; i++) {
      widgets.add(Container(
        color: colors[i],
        child: Center(
            child: Text(
          list[i],
          style: Theme.of(context).textTheme.title,
        )),
      ));
    }
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
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(48.0),
                              boxShadow: [
                                new BoxShadow(
                                    color: Colors.grey[300], blurRadius: 20.0)
                              ]),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ),
                      UserContainer()
                    ],
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '9753',
                            style: TextStyle(
                              fontSize: 40,
                              color: Color.fromRGBO(28, 58, 98, 1),
                            ),
                          ),
                          Text(
                            ' Steps',
                            style: TextStyle(color: Colors.grey, fontSize: 20),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Text(
                                '8763',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(28, 58, 98, 1)),
                              ),
                              Text('m',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.grey)),
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Row(
                            children: [
                              Text('1245',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(28, 58, 98, 1))),
                              Text(' kcal',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.grey))
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 30),
                  LineChartSample1(),
                  Padding(
                    padding: EdgeInsets.only(top: 80.0),
                    child: CardSelector(
                      cards: widgets,
                      mainCardWidth: 240,
                      mainCardHeight: 150,
                      mainCardPadding: -32,
                      cardAnimationDurationMs: 200,
                      cardsGap: 24.0,
                      dropTargetWidth: 8.0,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
