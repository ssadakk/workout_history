import 'package:flutter/material.dart';
import 'package:workout_history/utils/constants.dart';

class RecordSimpleCell extends StatelessWidget {
  const RecordSimpleCell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  flex: 5,
                  child: Text(
                    'chest | incline 4 sets',
                    style: TextStyle(
                      fontSize: cellFontSize,
                    ),
                  )),
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Checkbox(
                      shape: const CircleBorder(), value: true, onChanged: (_) {}),
                ),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                  flex: 5,
                  child: Text(
                    '6 x 12 x 3',
                    style: TextStyle(
                      fontSize: cellFontSize,
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'xxx kg',
                        style: TextStyle(
                          fontSize: cellFontSize,
                        ),
                      )))
            ],
          )
        ],
      ),
    );
  }
}
