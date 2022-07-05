import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:workout_history/utils/constants.dart';
import 'package:workout_history/view/calendar/record_detail_edit_row.dart';
import 'package:workout_history/view/calendar/record_detail_row.dart';

class RecordDetailCard extends StatefulWidget {
  const RecordDetailCard({Key? key}) : super(key: key);

  @override
  State<RecordDetailCard> createState() => _RecordDetailCardState();
}

class _RecordDetailCardState extends State<RecordDetailCard> {
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
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 19,
                      child: Text(
                    'chest | bench ',
                    style: cellTitleTextStyle,
                  )),
                  Expanded(
                    flex: 1,
                      child: FaIcon(FontAwesomeIcons.trashCan)),
                  Expanded(
                    flex: 1,
                      child: FaIcon(FontAwesomeIcons.ellipsis),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    'total volume : xxx kg',
                    style: cellTitleTextStyle,
                  )),
                  Expanded(
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue),
                              borderRadius: BorderRadius.all(Radius.circular(8))
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Text(
                                'recent record',
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ))),
                ],
              ),
            ),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return RecordDetailEditRow(index + 1, 77, 10, true);
                }),
          ],
        ),
      ),
    );
  }
}
