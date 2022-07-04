import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class RecordDetailRow extends StatelessWidget {
  const RecordDetailRow(this._index, this._weight, this._reps, this._done,
      {Key? key,})
      : super(key: key);
  final int _index;
  final double _weight;
  final int _reps;
  final bool _done;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 8.0),
      child: Row(
        children: [
          Expanded(
            child: Text('$_index',
                style: const TextStyle(
                  fontSize: cellFontSize,
                )),
          ),
          Expanded(
            child: Text(' $_weight kg',
                style: const TextStyle(
                  fontSize: cellFontSize,
                )),
          ),
          Expanded(
            child: Text('$_reps reps',
                style: const TextStyle(
                  fontSize: cellFontSize,
                )),
          ),
          Expanded(
              child: Align(
            alignment: Alignment.centerRight,
            child: Checkbox(
                shape: const CircleBorder(), value: _done, onChanged: (_) {}),
          )),
        ],
      ),
    );
  }
}
