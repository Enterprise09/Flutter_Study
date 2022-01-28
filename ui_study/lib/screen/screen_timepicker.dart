import 'package:flutter/material.dart';

class TimePickerScreen extends StatelessWidget {
  const TimePickerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TimePickerState();
  }
}

class TimePickerState extends StatefulWidget {
  const TimePickerState({Key? key}) : super(key: key);

  @override
  _TimePickerStateState createState() => _TimePickerStateState();
}

class _TimePickerStateState extends State<TimePickerState> {
  TimeOfDay? time = const TimeOfDay(hour: 12, minute: 12);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'UI / UX',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      body: Center(
        child: Text(
          '${time!.hour.toString()} : ${time!.minute.toString()}',
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.access_time),
        onPressed: () async {
          TimeOfDay? newTime =
              await showTimePicker(context: context, initialTime: time!);
          if (newTime != null) {
            setState(() {
              time = newTime;
            });
          }
        },
      ),
    );
  }
}
