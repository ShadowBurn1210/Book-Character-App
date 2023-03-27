import 'package:apartment_housting/Models/appConstants.dart';
import 'package:apartment_housting/Screens/GuestHomePage.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:table_calendar/table_calendar.dart';


class finishedBookPage extends StatefulWidget {

  static final String routeName = "/finishedBookPageRoute";

  finishedBookPage({super.key, required this.title});

  final String title;

  @override
  State<finishedBookPage> createState() => _finishedBookPageState();
}

class _finishedBookPageState extends State<finishedBookPage> {
  CalendarFormat _calendarFormat = CalendarFormat.month;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Finished a Book",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20.0,
            )
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25,25,25,0),
        child: Column(
          children: [
            Text(
              "Choose the dates",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.normal
              ),
            ),
            Container( // Calendar
              height: MediaQuery.of(context).size.height/2,
              child: TableCalendar(
                headerStyle: HeaderStyle(formatButtonVisible: false, titleCentered: true), // removes 2 weeks indetations
                firstDay: DateTime.utc(2023, 03, 01),
                lastDay: DateTime.utc(2024, 12, 31),
                focusedDay: DateTime.now(),
                availableGestures: AvailableGestures.all,

                onDaySelected: (selectedDay, focusedDay) {
                  setState(() {
                    var _selectedDay = selectedDay;
                    var _focusedDay = focusedDay; // update `_focusedDay` here as well
                  });
                },
                calendarFormat: _calendarFormat,
                onFormatChanged: (format) {
                  setState(() {
                    _calendarFormat = format;
                  });
                },
              ),
            ),
            MaterialButton(
              onPressed: () {},
              child: Text("Register dates now!"),
              minWidth: double.infinity,
              height: MediaQuery.of(context).size.height/15,
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
