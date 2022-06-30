import 'package:flutter/material.dart';

class RecordSimpleCell extends StatelessWidget {
  const RecordSimpleCell({Key? key}) : super(key: key);

  final double? _fontSize = 18;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  flex: 5,
                  child: Text(
                    'chest | incline 4 sets',
                    style: TextStyle(
                      fontSize: _fontSize,
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
                      fontSize: _fontSize,
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'xxx kg',
                        style: TextStyle(
                          fontSize: _fontSize,
                        ),
                      )))
            ],
          )
        ],
      ),
    );
  }
}
