import 'package:flutter/material.dart';
import 'package:workout_history/view/calendar/record_simple_cell.dart';

class RecordSimpleList extends StatelessWidget {
  RecordSimpleList({Key? key}) : super(key: key);

  final List _itemList = [1, 2, 3, 4, 5, 1, 1, 1, 1, 1, 1, 1];

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
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            color: Colors.grey,
          ),
          child: Center(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'EXERCISE',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          )),
        ),
        Container(
          child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: _itemList.length,
            itemBuilder: (BuildContext context, int index) {
              return RecordSimpleCell();
            },
            separatorBuilder: (BuildContext context, int index) {
              return Divider(
                thickness: 1,
              );
            },
          ),
        ),
      ],
    );
  }
}
