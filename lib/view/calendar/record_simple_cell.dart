import 'package:flutter/material.dart';


class RecordSimpleCell extends StatelessWidget {
  const RecordSimpleCell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(flex: 5, child: Text('chest | incline 4 sets')),
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Checkbox(
                      shape: CircleBorder(),
                      value: true,
                      onChanged: (_){}),
                ),
              )
            ],
          ),
          Row(
            children: [
              Expanded(flex: 5, child: Text('6 x 12 x 3')),
              Expanded(
                  flex: 1,
                  child: Align(
                      alignment: Alignment.centerRight, child: Text('xxx kg')))
            ],
          )
        ],
      ),
    );
  }
}
