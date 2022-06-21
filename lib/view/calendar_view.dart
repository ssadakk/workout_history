import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../utils/logger.dart';

class CalendarView extends StatefulWidget {
  const CalendarView({Key? key}) : super(key: key);

  @override
  State<CalendarView> createState() => _CalendarViewState();
}

class _CalendarViewState extends State<CalendarView> {
  var _calendarFormat = CalendarFormat.month;
  DateTime? _selectedDay;
  DateTime _focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TableCalendar(
          firstDay: DateTime.utc(1970, 1, 1),
          lastDay: DateTime.utc(DateTime.now().year + 20, 12, 31),
          focusedDay: _focusedDay,
          calendarFormat: _calendarFormat,
          onFormatChanged: (format) {
            setState(() {
              _calendarFormat = format;
            });
          },
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
          headerVisible: true,
          headerStyle: const HeaderStyle(
            titleCentered: true,
            formatButtonVisible: false,
          ),
          calendarStyle: const CalendarStyle(
              weekendTextStyle: TextStyle(color: Colors.red),
              // todayTextStyle: TextStyle(color: Colors.green),
              // todayDecoration: BoxDecoration(color: Colors.transparent)
              // selectedDecoration: BoxDecoration(
              //   color: Colors.blueGrey,
              //   shape: BoxShape.circle,
              // ),
              ),
        ),
        Row(
          children: [
            Expanded(child: Text('data1')),
            Expanded(child: Text('data1')),
            Expanded(child: Text('data1')),
            Expanded(child: Text('data1')),
          ],
        )
      ],
    );
  }
}
