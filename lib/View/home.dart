import 'package:fabolus_task/View/utiles/reusable_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TimeOfDay time = const TimeOfDay(hour: 7, minute: 15);
  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Home'),
          centerTitle: true,
        ),
        body: Center(
          child: SizedBox(
            height: 800.h,
            child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Center(
                        child: interText(
                          time.format(context),
                          20.sp,
                          FontWeight.w700,
                          Colors.black,
                        ),
                      ),
                      interText(
                        DateFormat.yMMMMd().format(date),
                        20.sp,
                        FontWeight.w700,
                        Colors.black,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Submit'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          fixedSize: Size(
                            200.w,
                            50.h,
                          ),
                        ),
                      ),
                    ],
                  );
                }),
          ),
        ),
      ),
    );
  }
}
