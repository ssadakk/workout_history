

import 'package:flutter/material.dart';
import 'package:workout_history/view/calendar/record_simple_cell.dart';

class RecordSimpleList extends StatelessWidget {
  const RecordSimpleList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            color: Colors.grey,
          ),
          child: Center(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('EXERCISE', style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),),
          )),
        ),
        RecordSimpleCell(),
        RecordSimpleCell(),
        RecordSimpleCell(),
        RecordSimpleCell(),
        RecordSimpleCell(),
        RecordSimpleCell(),
        RecordSimpleCell(),
      ],
    );
  }
}
