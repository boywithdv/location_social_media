import 'package:flutter/material.dart';
import 'basics_example.dart';
import 'complex_example.dart';
import 'events_example.dart';
import '../multi_example.dart';
import '../range_example.dart';

class MyCalendar extends StatefulWidget {
  const MyCalendar({super.key});

  @override
  State<MyCalendar> createState() => _MyCalendarState();
}

class _MyCalendarState extends State<MyCalendar> {
  final items = [
    const Icon(Icons.calendar_month_outlined, size: 30),
    const Icon(
      Icons.mail,
      size: 30,
    ),
    const Icon(
      Icons.location_on,
      size: 30,
    ),
    const Icon(Icons.search),
    const Icon(Icons.person)
  ];
  var index = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 20.0),
          ElevatedButton(
            child: Text('Basics'),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => TableBasicsExample()),
            ),
          ),
          const SizedBox(height: 12.0),
          ElevatedButton(
            child: Text('Range Selection'),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => TableRangeExample()),
            ),
          ),
          const SizedBox(height: 12.0),
          ElevatedButton(
            child: Text('Events'),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => TableEventsExample()),
            ),
          ),
          const SizedBox(height: 12.0),
          ElevatedButton(
            child: Text('Multiple Selection'),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => TableMultiExample()),
            ),
          ),
          const SizedBox(height: 12.0),
          ElevatedButton(
            child: Text('Complex'),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => TableComplexExample()),
            ),
          ),
          const SizedBox(height: 20.0),
        ],
      )),
    );
  }
}
