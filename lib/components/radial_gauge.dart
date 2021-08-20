import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class RadialGauge extends StatelessWidget {
  const RadialGauge({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(
      axes: <RadialAxis>[
        RadialAxis(
            showLabels: false,
            showTicks: false,
            startAngle: 300,
            endAngle: 300,
            minimum: 0,
            maximum: 100,
            radiusFactor: 0.8,
            axisLineStyle: const AxisLineStyle(
                thicknessUnit: GaugeSizeUnit.factor,
                thickness: 0.15,
                color: Color.fromRGBO(224, 240, 235, 1)),
            annotations: <GaugeAnnotation>[
              GaugeAnnotation(
                  angle: 100,
                  widget: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        child: Text(
                          '981',
                          style: TextStyle(
                            fontSize: 70,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          'Burned calories',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[500]),
                        ),
                      )
                    ],
                  )),
            ],
            pointers: const <GaugePointer>[
              RangePointer(
                  value: 50,
                  cornerStyle: CornerStyle.bothCurve,
                  enableAnimation: true,
                  animationDuration: 1200,
                  animationType: AnimationType.ease,
                  sizeUnit: GaugeSizeUnit.factor,
                  gradient: SweepGradient(colors: <Color>[
                    Color.fromRGBO(183, 246, 230, 1),
                    Color.fromRGBO(0, 218, 175, 1),
                  ], stops: <double>[
                    0.25,
                    3.0
                  ]),
                  color: Color(0xFF00A8B5),
                  width: 0.15),
              MarkerPointer(
                  enableAnimation: true,
                  value: 48,
                  color: Colors.white,
                  markerHeight: 10,
                  markerWidth: 10,
                  markerType: MarkerType.circle)
            ]),
      ],
    );
  }
}
