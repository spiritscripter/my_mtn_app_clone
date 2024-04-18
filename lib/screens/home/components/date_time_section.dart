import 'package:flutter/material.dart';
import 'package:my_mtn_app/helpers/size_config.dart';
import 'package:intl/intl.dart';

class ShowDateTime extends StatefulWidget {
  const ShowDateTime({super.key});

  @override
  State<ShowDateTime> createState() => _ShowDateTimeState();
}

class _ShowDateTimeState extends State<ShowDateTime> {
  @override
  void initState() {
    showDatetime();
    super.initState();
  }

  String? datetimeformat;
  void showDatetime() {
    DateTime datetime = DateTime.now();

    // Define the date and time format
    datetimeformat = DateFormat('MMM dd yyyy; h:mm:ss a').format(datetime);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainCenter,
      children: [
        Text(
          "Showing balances as at $datetimeformat",
          style: TextStyle(
            fontSize: 13.h,
            fontWeight: FontWeight.w400,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
