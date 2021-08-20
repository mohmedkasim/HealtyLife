import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderInput extends StatefulWidget {
  int value;
  final text;
  final color;
  SliderInput({Key key, this.value, this.text, this.color}) : super(key: key);

  @override
  _SliderInputState createState() => _SliderInputState();
}

class _SliderInputState extends State<SliderInput> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(widget.text),
        SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              flex: 7,
              child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                    inactiveTrackColor: Colors.grey[400],
                    thumbColor: widget.color,
                    activeTrackColor: widget.color,
                    overlayColor: Color(0x29EB1555),
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.0),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 10)),
                child: Slider(
                  value: widget.value.toDouble(),
                  min: 120.0,
                  max: 220.0,
                  onChanged: (double newValue) {
                    setState(() {
                      widget.value = newValue.round();
                    });
                  },
                ),
              ),
            ),
            Expanded(flex: 1, child: Text(widget.value.toString() + " %"))
          ],
        ),
      ],
    );
  }
}
