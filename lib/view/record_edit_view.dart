import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:table_calendar/table_calendar.dart';

import '../utils/constants.dart';
import '../utils/logger.dart';
import 'calendar/record_detail_list.dart';

class RecordEditView extends StatefulWidget {
  const RecordEditView({Key? key}) : super(key: key);

  @override
  State<RecordEditView> createState() => _RecordEditViewState();
}

class _RecordEditViewState extends State<RecordEditView> {
  DateTime? _selectedDay;

  DateTime _focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Expanded(
                    child: GestureDetector(
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        margin: EdgeInsets.only(left: 10),
                        child: FaIcon(
                          Icons.calendar_month,
                          size: 35,
                        ),
                      )),
                  onTap: () {
                    Log.d('back tapped!');
                    Navigator.pop(context);
                  },
                )),
                Expanded(child: Center(child: Text('7/1', style: editCalendarTitleStyle,))),
                Expanded(
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: FaIcon(FontAwesomeIcons.bars, size: 30,)),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  child: Center(child: FaIcon(FontAwesomeIcons.chevronLeft)),
                ),
              ),
              Expanded(
                flex: 10,
                child: TableCalendar(
                  firstDay: DateTime.utc(1970, 1, 1),
                  lastDay: DateTime.utc(DateTime.now().year + 20, 12, 31),
                  focusedDay: _focusedDay,
                  calendarFormat: CalendarFormat.week,
                  selectedDayPredicate: (date) {
                    return isSameDay(_selectedDay, date);
                  },
                  onDaySelected: (selectedDay, focusedDay) {
                    if (!isSameDay(_selectedDay, selectedDay)) {
                      setState(() {
                        _selectedDay = selectedDay;
                        _focusedDay = focusedDay;
                      });
                    }
                  },
                  onPageChanged: (focusedDay) {
                    _focusedDay = focusedDay;
                  },
                  headerVisible: false,
                  headerStyle: const HeaderStyle(
                    titleCentered: true,
                    formatButtonVisible: false,
                  ),
                  calendarStyle: const CalendarStyle(
                    weekendTextStyle: TextStyle(color: Colors.red),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: Center(child: FaIcon(FontAwesomeIcons.chevronRight)),
                ),
              ),
            ],
          ),
          RecordDetailList(),
        ],
      ),
    );
  }
}
