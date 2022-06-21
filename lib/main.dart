import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:workout_history/utils/logger.dart';
import 'package:workout_history/view/calendar_view.dart';
import 'package:workout_history/view/home_view.dart';
import 'package:workout_history/view/library_view.dart';
import 'package:workout_history/view/mypage_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List _tabWidget = [
    const HomeView(),
    const CalendarView(),
    const LibraryView(),
    const MyPageView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState((){
            _selectedIndex = index;
            Log.d("_selectedIndex : $_selectedIndex" );
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: '홈',
            icon: FaIcon(FontAwesomeIcons.house),
          ),
          BottomNavigationBarItem(
            label: '캘린더',
            icon: FaIcon(FontAwesomeIcons.solidCalendarDays),
          ),
          BottomNavigationBarItem(
            label: '라이브러리',
            icon: FaIcon(FontAwesomeIcons.dumbbell),
          ),
          BottomNavigationBarItem(
            label: '마이페이지',
            icon: FaIcon(FontAwesomeIcons.userPen),
          ),
        ],


      ),
      body: Center(
        child: _tabWidget.elementAt(_selectedIndex),
      ),
    );
  }
}
