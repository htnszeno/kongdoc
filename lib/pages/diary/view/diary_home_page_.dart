import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:intl/intl.dart';

class DiaryHomePage extends StatefulWidget {
  const DiaryHomePage({super.key});

  static Route<void> route() {
    return MaterialPageRoute(
      fullscreenDialog: true,
      builder: (BuildContext context) => const DiaryHomePage(),
    );
  }

  @override
  State<DiaryHomePage> createState() => _DiaryHomePageState();
}

class _DiaryHomePageState extends State<DiaryHomePage> {
  DateTime _currentDate = DateTime(2022, 12, 19);
  DateTime _currentDate2 = DateTime(2022, 12, 20);
  String _currentMonth = DateFormat.yMMM().format(DateTime(2022, 12, 13));
  DateTime _targetDateTime = DateTime(2022, 12, 14);

//  List<DateTime> _markedDate = [DateTime(2018, 9, 20), DateTime(2018, 10, 11)];
  static final Widget _eventIcon = Container(
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(1000)),
        border: Border.all(color: Colors.blue, width: 2.0)),
    child: const Icon(
      Icons.person,
      color: Colors.amber,
    ),
  );

  final EventList<Event> _markedDateMap = EventList<Event>(
    events: {
      DateTime(2022, 2, 10): [
        Event(
          date: DateTime(2022, 12, 10),
          title: 'Event 1',
          icon: _eventIcon,
          dot: Container(
            margin: EdgeInsets.symmetric(horizontal: 1.0),
            color: Colors.red,
            height: 5.0,
            width: 5.0,
          ),
        ),
        Event(
          date: DateTime(2022, 12, 10),
          title: 'Event 2',
          icon: _eventIcon,
        ),
        Event(
          date: DateTime(2022, 12, 10),
          title: 'Event 3',
          icon: _eventIcon,
        ),
      ],
    },
  );

  @override
  void initState() {
    /// Add more events to _markedDateMap EventList
    _markedDateMap.add(
        DateTime(2022, 2, 25),
        Event(
          date: DateTime(2022, 2, 25),
          title: 'Event 5',
          icon: _eventIcon,
        ));

    _markedDateMap.add(
        DateTime(2022, 2, 10),
        Event(
          date: DateTime(2022, 2, 10),
          title: 'Event 4',
          icon: _eventIcon,
        ));

    _markedDateMap.addAll(DateTime(2022, 2, 11), [
      Event(
        date: DateTime(2022, 2, 11),
        title: 'Event 1',
        icon: _eventIcon,
      ),
      Event(
        date: DateTime(2022, 2, 11),
        title: 'Event 2',
        icon: _eventIcon,
      ),
      Event(
        date: DateTime(2022, 2, 11),
        title: 'Event 3',
        icon: _eventIcon,
      ),
      Event(
        date: DateTime(2022, 2, 11),
        title: 'Event 3',
        icon: _eventIcon,
      ),
    ]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final calendarCarouselNoHeader = CalendarCarousel<Event>(
      todayBorderColor: Colors.green,
      onDayPressed: (date, events) {
        this.setState(() => _currentDate2 = date);
        events.forEach((event) => print(event.title));
      },
      daysHaveCircularBorder: true,
      showOnlyCurrentMonthDate: false,
      weekendTextStyle: const TextStyle(
        color: Colors.red,
      ),
      thisMonthDayBorderColor: Colors.grey,
      weekFormat: false,
//      firstDayOfWeek: 4,
      markedDatesMap: _markedDateMap,
      height: 380.0,
      selectedDateTime: _currentDate2,
      targetDateTime: _targetDateTime,
      customGridViewPhysics: NeverScrollableScrollPhysics(),
      markedDateCustomShapeBorder:
          CircleBorder(side: BorderSide(color: Colors.yellow)),
      markedDateCustomTextStyle: TextStyle(
        fontSize: 18,
        color: Colors.blue,
      ),
      showHeader: false,
      todayTextStyle: TextStyle(
        color: Colors.blue,
      ),
      // markedDateShowIcon: true,
      // markedDateIconMaxShown: 2,
      // markedDateIconBuilder: (event) {
      //   return event.icon;
      // },
      // markedDateMoreShowTotal:
      //     true,
      todayButtonColor: Colors.yellow,
      selectedDayTextStyle: TextStyle(
        color: Colors.yellow,
      ),
      minSelectedDate: _currentDate.subtract(Duration(days: 360)),
      maxSelectedDate: _currentDate.add(Duration(days: 360)),
      prevDaysTextStyle: TextStyle(
        fontSize: 16,
        color: Colors.pinkAccent,
      ),
      inactiveDaysTextStyle: TextStyle(
        color: Colors.tealAccent,
        fontSize: 16,
      ),
      onCalendarChanged: (DateTime date) {
        this.setState(() {
          _targetDateTime = date;
          _currentMonth = DateFormat.yMMM().format(_targetDateTime);
        });
      },
      onDayLongPressed: (DateTime date) {
        print('long pressed date $date');
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('일기'),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Column(
        children: [
          // Expanded(
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     mainAxisAlignment: MainAxisAlignment.start,
          //     children: <Widget>[
          //       Container(
          //         margin: const EdgeInsets.only(
          //           top: 30.0,
          //           // bottom: 16.0,
          //           left: 16.0,
          //           right: 16.0,
          //         ),
          //         child: Row(
          //           children: <Widget>[
          //             Expanded(
          //                 child: Text(
          //               _currentMonth,
          //               style: TextStyle(
          //                 fontWeight: FontWeight.bold,
          //                 fontSize: 24.0,
          //               ),
          //             )),
          //             TextButton(
          //               child: Text('PREV'),
          //               onPressed: () {
          //                 setState(() {
          //                   _targetDateTime = DateTime(_targetDateTime.year,
          //                       _targetDateTime.month - 1);
          //                   _currentMonth =
          //                       DateFormat.yMMM().format(_targetDateTime);
          //                 });
          //               },
          //             ),
          //             TextButton(
          //               child: Text('NEXT'),
          //               onPressed: () {
          //                 setState(() {
          //                   _targetDateTime = DateTime(_targetDateTime.year,
          //                       _targetDateTime.month + 1);
          //                   _currentMonth =
          //                       DateFormat.yMMM().format(_targetDateTime);
          //                 });
          //               },
          //             )
          //           ],
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          RefreshIndicator(
            onRefresh: () async {},
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: calendarCarouselNoHeader,
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return ListTile(
                        leading: const Icon(Icons.heart_broken_outlined),
                        title: Row(
                          children: [
                            const Text(
                              "작성: 오전 10시23분",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            const Text(
                              "수정 : 오전 10시23분",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        subtitle: const Text("12.02 오늘 기분이 몹시 좋았다. "),
                      );
                    },
                    childCount: 30,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
