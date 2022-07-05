import 'package:flutter/material.dart';
import 'package:workout_history/utils/logger.dart';

import '../../utils/constants.dart';

class RecordDetailEditRow extends StatefulWidget {
  const RecordDetailEditRow(
    this._index,
    this._weight,
    this._reps,
    this._done, {
    Key? key,
  }) : super(key: key);
  final int _index;
  final double _weight;
  final int _reps;
  final bool _done;

  @override
  State<RecordDetailEditRow> createState() => _RecordDetailEditRowState();
}

class _RecordDetailEditRowState extends State<RecordDetailEditRow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 8.0, top: 10, bottom: 10),
      child: Row(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  padding: paddingEditBg,
                  decoration: boxDecoEditBg,
                  child: Text('${widget._index}', style: cellTextStyle)),
            ),
          ),
          Expanded(
            child: GestureDetector(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                    padding: paddingEditBg,
                    decoration: boxDecoEditBg,
                    child: Text('${widget._weight}', style: cellTextStyle)),
              ),
              onTap: (){
                Log.d('weight on tapped!!');
              },
            ),
          ),
          Expanded(
            child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                    padding: paddingEditBg,
                    decoration: boxDecoEditBg,
                    child: Text('${widget._reps}', style: cellTextStyle))),
          ),
          Expanded(
              child: Align(
              alignment: Alignment.center,
              child: Container(
                child: Icon(Icons.cancel_outlined),
              ),
          )),
        ],
      ),
    );
  }
}
