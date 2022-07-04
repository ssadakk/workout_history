import 'package:flutter/material.dart';
import 'package:workout_history/view/calendar/record_detail_card.dart';

class RecordDetailList extends StatelessWidget {
  const RecordDetailList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          physics: AlwaysScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 6,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: RecordDetailCard(),
            );
          }),
    );
  }
}
