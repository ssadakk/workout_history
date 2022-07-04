import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:workout_history/utils/constants.dart';
import 'package:workout_history/view/calendar/record_detail_row.dart';

class RecordDetailCard extends StatelessWidget {
  const RecordDetailCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text('chest', style: cellTextStyle,),
                Text('|', style: cellTextStyle,),
                Text('bench', style: cellTextStyle,),
              ],
            ),
            Row(
              children: [
                Text('total volume ', style: cellTextStyle,),
                Text(':', style: cellTextStyle,),
                Text('xxxkg', style: cellTextStyle,),
              ],
            ),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return RecordDetailRow(index + 1, 77.5, 10, true);
                }),
          ],
        ),
      ),
    );
  }
}
